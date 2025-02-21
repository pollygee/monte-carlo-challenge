class Dice
  attr_reader :sides
  def initialize sides
    @sides = sides
  end

  def roll 
    rand(1..@sides)
  end

  def loaded?
    return false
  end
  
  def but_really_is_it_loaded?
    return false
  end
end

class LoadedDice <     Dice
  def but_really_is_it_loaded?
    return true
  end

  def roll
    # roll1 = super
    # if roll1 > 3
    #   return roll3
    # else
    #   super
    # end
    
    n = rand(1..3)
    if n >1
      return rand(3..@sides)
    else
      return rand(1..@sides)
    end
  end

end
