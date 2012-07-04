require 'spec_helper'

describe "Serve Static Pages" do

  describe "should serve english pages" do

    it "should serve the magmazine home page" do
      visit root_path
      page.should have_css('li.bling img')

      visit page_path(language: :en, page: 'magmazine')
      page.should have_css('li.bling img')
    end

    it "should serve the editorial page" do
      visit page_path(language: :en, page: 'editorial')
      page.should have_content('EDITORIAL CONTENT')
    end

    it "should serve the infography page" do
      visit page_path(language: :en, page: 'infography')
      page.should have_css("img[alt='Magma in Numbers']")
    end

    it "should serve the sponsors page" do
      visit page_path(language: :en, page: 'sponsor')
      page.should have_content("Our Sponsors")
    end

    it "should serve the gallery page" do
      visit page_path(language: :en, page: 'gallery')
      page.should have_content("Magma in Pictures")
    end

    it "should serve the community page" do
      visit page_path(language: :en, page: 'community')
      page.should have_content("Community")
    end

    it "should serve the keynote page" do
      visit page_path(language: :en, page: 'keynote')
      page.should have_content("Article")
    end

  end
end
