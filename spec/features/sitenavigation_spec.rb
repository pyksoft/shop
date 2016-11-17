require 'rails_helper'

feature 'Site Navigation', js: true do

  scenario 'Go to Shopping Cart' do
    # Point your browser towards the homepage
    visit root_path
    # Clicks Link ..cartbutton
    click_link "0 Items in Cart ( $0.00 )"
    # expect(page).to have_text("Subtotal")
    expect(page).to have_text("Subtotal")
    # Go to confirmation page
    click_button "Confirm and pay your order"
    # expect(page).to have_text("Subtotal")
    expect(page).to have_text("Overview of products")



  end
end
