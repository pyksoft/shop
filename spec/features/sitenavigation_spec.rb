require 'rails_helper'

feature 'Site Navigation', js: true do

  scenario 'Go to Shopping Cart' do
    # Point your browser towards the homepage
    visit root_path
    # Clicks Link ..Items in cart
    click_button "cartbutton"
    # expect(page).to have_text("Subtotal")
    expect(page).to have_text("Subtotal")
    # Go to confirmation page
    click_button "confirmbutton"
    # expect(page).to have_text("Subtotal")
    expect(page).to have_text("Overview of products")



  end
end
