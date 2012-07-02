require 'spec_helper'

describe "Serve Static Pages" do

  describe "should serve english pages" do

    it "should serve the magmazine home page" do
      visit root_path
      page.should have_css('li.bling img')

      visit page_path(page: 'magmazine')
      page.should have_css('li.bling img')
    end

    it "should serve the editorial page" do
      visit page_path(page: 'editorial')
      page.should have_content('EDITORIAL CONTENT')
    end

    it "should serve the infography page" do
      visit page_path(page: 'infography')
      page.should have_css("img[alt='Magma in Numbers']")
    end

    it "should serve the tweets page" do
      visit page_path(page: 'tweets')
      page.should have_content("Which conference you liked the most and why?")
    end

    it "should serve the sponsors page" do
      visit page_path(page: 'sponsor')
      page.should have_content("Our Sponsors")
    end

    it "should serve the sponsors page" do
      visit page_path(page: 'sponsor')
      page.should have_content("Our Sponsors")
    end

    it "should serve the gallery page" do
      visit page_path(page: 'gallery')
      page.should have_content("Magma in Pictures")
    end

    it "should serve the community page" do
      visit page_path(page: 'community')
      page.should have_content("Community")
    end

    it "should serve the keynote page" do
      visit page_path(page: 'keynote')
      page.should have_content("Article")
    end

  end
end
