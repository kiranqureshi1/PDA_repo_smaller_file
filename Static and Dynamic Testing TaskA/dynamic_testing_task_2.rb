# Carry out dynamic testing on testing_task_2.rb.
# Read through the code. Create a spec file and write a test for each function. Screenshot the tests and the tests failing. Correct the errors you spotted in task A. Screenshot the tests and the tests passing, you can use this evidence for P18 of your project unit.


require_relative('card.rb')
class CardGame

#5th test spots there is no attributes and there was no initialize method

attr_accessor :cards

def initialize(cards)
  @cards = cards
end


  def checkforAce(card)
#6th test spots equal sign which has to be double equal in if statement
    if card.value == 1
      return true
    else
      return false
    end
  end
#2nd test spots dif which is def as I corrected
#3rd test spots there is no comma between card1 nd card2.
  def highest_card(card1, card2)
  if card1.value > card2.value
    return card.name
  else
    card2
  end
end
#first test spots this and end


def self.cards_total(cards)
#7th error spots total is assigned to nothing.
  total = 0
  for card in cards
    total += card.value
  end
#8th error spots + total. total has to string interpolated with #{}
#9th error spots return has to outside the loop to go through the whole array.
  return "You have a total of #{total}"
end


#4th test spots there is no keyword end
end
