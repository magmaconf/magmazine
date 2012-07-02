require 'spec_helper'

describe "Content Admin" do

  describe "Changing text content" do
    it "Changes the editorial title" do
      visit page_path(page: :editorial)
      page.should have_content('This is merely the beginning')

      visit contents_path
      click_link 'Editorial'
      click_link 'main_title'
      fill_in 'main_title_content', with: 'The new main title'
      visit page_path(page: :editorial)
      page.should have_content('The new main title')
    end
  end

end
