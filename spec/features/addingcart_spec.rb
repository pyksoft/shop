require 'rails_helper'

feature 'Add to cart', js: true do
  let!(:product) { create :product }
  scenario 'Add beer to cart' do
    # Point your browser towards the homepage
    visit root_path
    # Clicks Link Add to Cart
    # click_button "Add to Cart"
    # Cart updates
    # expect(page).to have_text("1 Items in Cart")
    # !!Button Add to cart is not shown when product is created? For later reference

  end
end
