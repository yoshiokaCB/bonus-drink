class BonusDrink
  BONUS_COUNT = 3
  def self.total_count_for(amount)
    total    = amount
    decision = total
    while decision >=3
      bonus, remnant  = decision.divmod(BONUS_COUNT)
      total          += bonus
      decision        = bonus + remnant
    end
    total
  end
end
