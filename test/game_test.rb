require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/game'

class DeckTest < Minitest::Test

def test_it_exists_with_attributes
  card1 = Card.new(:heart, 'Jack', 11)
  card2 = Card.new(:heart, '10', 10)
  deck1 = Deck.new(card1)
  deck2 = Deck.new(card2)
  player1 = Player.new("G", deck1)
  player2 = Player.new("F", deck2)
  game1 = Game.new(player1, player2)
  require "pry"
  binding.pry
  assert_instance_of Game, game1
  assert_equal 0, game1.count
end

end
