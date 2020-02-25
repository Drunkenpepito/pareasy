class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :bet_room

  def is_admin?
    admin
  end
end
