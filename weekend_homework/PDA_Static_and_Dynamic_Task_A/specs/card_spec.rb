require("minitest/autorun")
require_relative("../card")
require_relative('../testing_task_2')

class CardGameTest < MiniTest::Test

  def setup
    @cardgame = CardGame.new()

    @card1 = Card.new("clubs", 5)
    @card2 = Card.new("hearts", 9)
    @card3 = Card.new("diamonds", 1)

    @all_cards = [@card1, @card2, @card3]

  end

  def test_check_for_ace__true ()
    assert_equal(true, @cardgame.check_for_ace(@card3) )
  end

  def test_check_for_ace__false ()
    assert_equal(false, @cardgame.check_for_ace(@card1) )
  end

  def test_highest_card__card2 ()
    assert_equal(@card2, @cardgame.highest_card(@card2, @card1))
  end

  def test_highest_card__card3 ()
    assert_equal(@card2, @cardgame.highest_card(@card2, @card3))
  end

  def test_cards_total
      assert_equal("You have a total of 15!", CardGame.cards_total(@all_cards))
  end

end
