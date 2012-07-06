# encoding: UTF-8
require 'spec_helper'

describe "Translations admin" do
  describe "Try if link is filtering related translations" do
    before do
      I18n.backend.load_translations
      User.create! email: 'test@magmazine.com', password: '123test'
    end

    it "gallery link exist and filter options" do
      visit translations_path
      fill_in 'user_email', with: 'test@magmazine.com'
      fill_in 'user_password', with: '123test'
      click_button 'Sign in'

      find("a.gallery").should be_visible
      click_link 'gallery'
      page.should have_content('en.magmazine.gallery')
    end


  end
  describe "Changing text content" do
    before do
      I18n.backend.load_translations
      User.create! email: 'test@magmazine.com', password: '123test'
    end

    it "Changes the editorial title" do
      visit page_path(language: :en, page: :editorial)
      page.should have_content('This is merely the beginning')

      visit translations_path
      fill_in 'user_email', with: 'test@magmazine.com'
      fill_in 'user_password', with: '123test'
      click_button 'Sign in'

      click_link 'en.magmazine.editorial.title1'
      fill_in 'translation_value', with: 'The new main title'
      click_button 'Update'
      page.should have_content('en.magmazine.editorial.title1 has been updated')
      visit page_path(language: :en, page: :editorial)
      page.should have_content('The new main title')
    end

    it "Changes the editorial content" do
      visit page_path(language: :en, page: :editorial)
      page.should have_css("p:contains('It is our pleasure to greet you again')")

      visit translations_path
      fill_in 'user_email', with: 'test@magmazine.com'
      fill_in 'user_password', with: '123test'
      click_button 'Sign in'

      click_link 'en.magmazine.editorial.content_html'
      fill_in 'translation_value', with: '<p>test1 test2 test3</p>'
      click_button 'Update'
      page.should have_content('en.magmazine.editorial.content_html has been updated')
      visit page_path(language: :en, page: :editorial)
      page.should have_css("p:contains('test1 test2 test3')")
    end
  end

end
