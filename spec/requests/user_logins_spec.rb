require 'rails_helper'

RSpec.describe "UserLogins", type: :request do

  it "displays the user's email after successful login" do
    user = create(:user)
    visit new_user_session_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log in"

    expect(page).to have_selector("#user_nav", :text => user.email)
  end
end
