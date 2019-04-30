require("minitest/autorun")
require("minitest/rg")
require_relative('dynamic_testing_task_2.rb')
require_relative('card.rb')

class TestCardGame < MiniTest::Test

  def setup
    @card1 = Card.new("king", 1)
    @card2 = Card.new("queen", 2)

    @cards = ([@card1, @card2])

    @cardgame1 = CardGame.new(@cards)
  end


  def test_checkforAce
    assert_equal(true, @cardgame1.checkforAce(@card1) )
  end

  def test_highest_card
    assert_equal(@card2, @cardgame1.highest_card(@card1, @card2))
  end

  def test_cards_total
    assert_equal("You have a total of 3", CardGame.cards_total(@cards))
  end

end
