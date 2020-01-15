class SlotMachine
  attr_reader :reels

  def initialize
    @reels = []
    @symbols = {
      "Joker" => 50,
      "Star" => 40,
      "Bell" => 30,
      "Seven" => 20,
      "Cherry" => 10
    }
  end

  def play
    # symbol1 = @symbols.keys.sample
    # symbol2 = @symbols.keys.sample
    # symbol3 = @symbols.keys.sample
    # @reels = [symbol1, symbol2, symbol3]
    @reels = []
    3.times { @reels << @symbols.keys.sample }
  end

  def score
    if @reels.uniq.size == 1
      return @symbols[@reels.first]
    elsif @reels.uniq.size == 2 && @reels.include?("Joker")
      return @symbols[@reels.sort[1]] / 2
    else
      return 0
    end
  end

end

slot_machine = SlotMachine.new

slot_machine.play
p slot_machine.reels
p slot_machine.score
