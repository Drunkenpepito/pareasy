class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new_sport?
    return true
  end

  def create_sport?
    return true
  end

  def edit_league?
    return true
  end

  def update_league?
    return true
  end

  def edit_game?
    return true
  end

  def update_game?
    return true
  end

  def edit_description?
    return true
  end

  def update_description?
    return true
  end

  def show?
    return true
  end

  def update?
    return true
  end

  def arbitre?
    return true
  end

  def close?
    record.author == user
  end

  # def copy_to_stat?
  #    true
  # end
end
