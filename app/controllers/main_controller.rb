class MainController < ApplicationController
  def home
    render({ :template=> "dice_templates/home"})
  end

  def two_six
    @num_dice = 2
    @sides = 6
    
    @rolls = []
    2.times do
      die = rand(1..6)
      @rolls.push(die)
    end
    render({ :template=> "dice_templates/flex"})
  end

  def two_ten
    @num_dice = 2
    @sides = 10
    
    @rolls = []
    2.times do
      die = rand(1..10)
      @rolls.push(die)
    end
    render({ :template=> "dice_templates/flex"})
  end

  def one_twenty
    @num_dice = 1
    @sides = 20
    
    @rolls = []
    1.times do
      die = rand(1..20)
      @rolls.push(die)
    end
    render({ :template=> "dice_templates/flex"})
  end

  def five_four
    @num_dice = 5
    @sides = 4
    
    @rolls = []
    5.times do
      die = rand(1..4)
      @rolls.push(die)
    end
    render({ :template=> "dice_templates/flex"})
  end

  def flex
    @num_dice = params.fetch("number_of_dice").to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render({ :template=> "dice_templates/flex"})
  end




end
