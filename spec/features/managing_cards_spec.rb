require 'rails_helper'

def create_cards
  Card.create!(
    subject: 'Space',
    content: 'Starfish Prime',
    fact: 'Starfish Prime was a high-altitude nuclear test.',
    references: 'http://en.wikipedia.org/wiki/Starfish_Prime'
  )
end


feature "Manage Card" do
  scenario "visit the index and see that cards are or aren't there" do
    visit cards_path

    expect(page.find('.nocards')).to have_content(/No Cards available/i)
  end

  scenario "List all Cards" do
    create_cards

    visit cards_path

    expect(page.find('.subject')).to have_content(/Space/)
    expect(page.find('.content')).to have_content(/Starfish Prime/)
    expect(page.find('.fact')).to have_content(/Starfish Prime was a high-altitude nuclear test./)
    expect(page.find('.references')).to have_content('http://en.wikipedia.org/wiki/Starfish_Prime')
    expect(page).not_to have_content(/No Cards available/i)
  end

  # scenario "click the create new button and be directed to a new page with a form" do
  #   visit cards_path
  #   click_on 'New Card'

  #   expect(current_path).to eq(new_card_path)
  # end

  # scenario "enter input on the form and click submit, be redirected and then see the new card on the index page" do
  #   visit new_card_path
  #   fill_in 'Subject', with: 'Space'
  #   fill_in 'content', with: 'Starfish Prime'
  #   fill_in 'fact', with: 'Starfish Prime was a high-altitude nuclear test.'
  #   fill_in 'references', with: 'http://en.wikipedia.org/wiki/Starfish_Prime'
  #   click_on 'Create Card'

  #   expect(current_path).to eq(card_path(Card.last))

  #   click_on 'All Cards'

  #   expect(current_path).to eq(cards_path)
  # end

  # scenario "edit a particular card, to be redirected and see the updated card on the index page." do
  #   new_card = create_cards

  #   visit edit_card_path(new_card)
  #   fill_in 'Subject', with: 'Space'
  #   fill_in 'content', with: 'Starfish Prime'
  #   fill_in 'fact', with: 'Starfish Prime was a high-altitude nuclear test.'
  #   fill_in 'references', with: 'http://en.wikipedia.org/wiki/Starfish_Prime'
  #   click_on 'Update Card'

  #   expect(current_path).to eq(card_path(Card.last))

  #   click_on 'All Cards'

  #   expect(current_path).to eq(cards_path)
  # end

  # scenario "delete a card, be redirected to the index page and expect NOT to see the deleted card anymore" do
  #   create_cards

  #   visit cards_path
  #   click_on 'Destroy'

  #   expect(current_path).to eq(cards_path)
  #   expect(cards_path).to_not have_content(/Test Card/)
  # end
end
