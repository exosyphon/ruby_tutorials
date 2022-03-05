
require_relative 'game.rb'
require 'minitest/autorun'

describe "RockPaperScissors" do
    it "returns 'Player 1 Wins' when rock vs scissors" do
        # Assemble
        # Action
        result = RockPaperScissors.new.play("rock", "scissors")
        # Assert
        assert_equal('Player 1 Wins', result)
    end
    it "returns 'Player 1 Wins' when scissors vs paper" do
        result = RockPaperScissors.new.play("scissors", "paper")

        assert_equal('Player 1 Wins', result)
    end
    it "returns 'Player 1 Wins' when paper vs rock" do
        result = RockPaperScissors.new.play("paper", "rock")

        assert_equal('Player 1 Wins', result)
    end
    it "returns 'Player 2 Wins' when scissors vs rock" do
        result = RockPaperScissors.new.play("scissors", "rock")

        assert_equal('Player 2 Wins', result)
    end
    it "returns 'Player 2 Wins' when paper vs scissors" do
        result = RockPaperScissors.new.play("paper", "scissors")

        assert_equal('Player 2 Wins', result)
    end
    it "returns 'Player 2 Wins' when rock vs paper" do
        result = RockPaperScissors.new.play("rock", "paper")

        assert_equal('Player 2 Wins', result)
    end
    it "returns 'Tie' when scissors vs scissors" do
        result = RockPaperScissors.new.play("scissors", "scissors")

        assert_equal('Tie', result)
    end
    it "returns 'Tie' when paper vs paper" do
        result = RockPaperScissors.new.play("paper", "paper")

        assert_equal('Tie', result)
    end
    it "returns 'Tie' when rock vs rock" do
        result = RockPaperScissors.new.play("rock", "rock")

        assert_equal('Tie', result)
    end
end