require 'rails_helper'

describe "user signup and signin" do

let(:user) { create :user }

it "opens the homepage, click and click login" do
  visit root_path
  # click_link('adminlink') - this linkfunction in test doesn't work, to be fixed
  visit user_session_path
  expect(page).to have_text("Log in")
  fill_in('Email', :with => user.email)
  fill_in('Password', :with => user.password)
  click_button "Log in"

  expect(page).to have_text("Signed in successfully")
  end
end
