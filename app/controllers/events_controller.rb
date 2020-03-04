class EventsController < ApplicationController

  def new_sport
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event = Event.new
    authorize @event
  end

  def create_sport

    @event = Event.new(event_params)
    @bet_room = BetRoom.find(params[:bet_room_id])
    @event.bet_room = @bet_room
    @event.author = current_user
    authorize @event

    if @event.save
      redirect_to edit_league_event_path(@event)
    else
      render :new_sport
    end
  end

  def edit_league
    @event = Event.find(params[:id])
    @bet_room = BetRoom.find(@event.bet_room_id)
    authorize @event
  end

  def update_league
    # raise
    @event = Event.find(params[:id])
    authorize @event

    @event.league = params[:event][:league]
    @event.thesportdb_league_id = params[:event][:thesportdb_league_id]

    if @event.save
      redirect_to edit_game_event_path(@event)
    else
      render :edit_league
    end
  end

  def edit_game
    @event = Event.find(params[:id])
    @bet_room = BetRoom.find(@event.bet_room_id)
    authorize @event

    @games = ParseEventService.new(@event).call
  end

  def update_game
    @event = Event.find(params[:id])
    authorize @event

    @event.game = params[:event][:game]
    @event.thesportdb_event_id = params[:event][:thesportdb_event_id]

    if @event.save
      redirect_to edit_description_event_path(@event)
    else
      render :edit_game
    end
  end

  def edit_description
    @event = Event.find(params[:id])
    @bet_room = BetRoom.find(@event.bet_room_id)
    authorize @event
  end

  def update_description
    @event = Event.find(params[:id])
    authorize @event
    description = "#{event_params[:home_team_score]} - #{event_params[:away_team_score]}"
    @event.description = description
    # @event.description = params[:event][:description]
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit_description
    end
  end

  def update_results
    @event = Event.find(params[:id])
    authorize @event
    @event.description = params[:event][:description]
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit_description
    end
  end

  def show
    @event = Event.find(params[:id])
    @bet_room = BetRoom.find(@event.bet_room_id)
    @bet = Bet.new
    authorize @event
  end

  def index
    @bet_room = BetRoom.find(params[:bet_room_id])
    @events = policy_scope(Event).where(bet_room: @bet_room, results: nil, author_id: current_user.id)
    # fetch results
    @events.each do |event|
      next unless event.results.nil?
      FetchEventResultsService.new(event).call

    end
  end

  def close
    @event = Event.find(params[:id])
    @bet_room = BetRoom.find(@event.bet_room_id)
    @event.update(results: params[:results])
    authorize @event
    @bets = Bet.where("event_id=?",params[:id])

    player = 0
    winner_count = 0
    sum_bets_amount = 0

    @bets.each do |bet|
      sum_bets_amount += bet.amount_cents.to_i
      player += 1
      if bet.result == @event.results
        winner_count += 1
        bet.winner = true
        bet.save
      end
    end

    if winner_count == 0
      price_per_winner = (sum_bets_amount*100) / player
      @bets.each do |bet|
        user = User.find(bet.user_id)
        if user.amount_cents.nil?
          user.amount_cents = 0
        end
        user.amount_cents += price_per_winner
        user.save
      end
    else
      price_per_winner = (sum_bets_amount*100) / winner_count
      @bets.each do |bet|
        if bet.result == @event.results
          user = User.find(bet.user_id)
          if user.amount_cents.nil?
            user.amount_cents = 0
          end
          user.amount_cents += price_per_winner
          user.save
        end
      end
    end
    raise
    # @event.finish = true
    # @event.results != nil
    @event.save
    redirect_to bet_room_events_path(@event.bet_room)
  end

  private

  def event_params
    params.require(:event).permit(:sport, :league, :game, :description, :home_team_score, :away_team_score)
  end

  def gamers(event_id)
    @gamers = Bet.all.where(event_id: event_id)
  end

  def winners
    @event = Event.find(params[:id])
    @winners = @event.bets.select(&:winner).map(&:user)
  end

end

