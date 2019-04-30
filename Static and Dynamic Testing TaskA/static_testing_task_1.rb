# Carry out static testing on testing_task_1.md.
# Read through the code. Comment any errors you can see but do not correct them in this file.

require_relative('card.rb')
class CardGame


  def checkforAce(card)
# there has to be two equal signs between cad.value and 1
    if card.value = 1
      return true
    else
      return false
    end
  end

#method is defined by def not dif. There needs to be comma between card1 and card2 to show they are two different arguments.
  dif highest_card(card1 card2)
  if card1.value > card2.value
# it has to be card1 not card.name.
    return card.name
  else
    card2
  end
end
#top two ends are for method and for if statement.
# this below end is an extra end.
end

def self.cards_total(cards)
# total is a variable. It has to be assigned to a boolean, like 0 for-example
  total
  for card in cards
    total += card.value
# there is no need of plus sign and total should be string interpolated as "You have a total of #{total}"
    return "You have a total of" + total
  end
end
