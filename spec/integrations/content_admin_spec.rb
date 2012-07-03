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
      save_and_open_page

      click_link 'en.editorial.title1'
      fill_in 'en.editorial.title1', with: 'The new main title'
      click_button 'Update'
      page.should have_content('en.editorial.title1 has been updated')
      visit page_path(page: :editorial)
      page.should have_content('The new main title')
    end
  end

end
