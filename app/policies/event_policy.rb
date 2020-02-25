class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def sport?
    return true
  end

  def game?
    return true
  end

  def description?
    return true
  end

  def create?
    return true
  end
end
