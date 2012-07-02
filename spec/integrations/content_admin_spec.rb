require 'spec_helper'

describe "Content Admin" do

  describe "Changing text content" do
    before do
      User.create! email: 'test@magmazine.com', password: '123test'
    end

    it "Changes the editorial title" do
      visit page_path(page: :editorial)
      page.should have_content('This is merely the beginning')

      visit contents_path
      fill_in 'user_email', with: 'test@magmazine.com'
      fill_in 'user_password', with: '123test'
      click_button 'Sign in'

      click_link 'Editorial'
      click_link 'Text'
      click_link 'main_title'
      fill_in 'main_title_content', with: 'The new main title'
      visit page_path(page: :editorial)
      page.should have_content('The new main title')
    end
  end

end
