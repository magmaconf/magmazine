class StaticController < ApplicationController
  def show
    page = params[:page]
    render page, page_options(page)

  rescue ActionView::MissingTemplate
    redirect_to "404"
  end

  private
    def page_options page
      if page == 'magmazine'
        @nav = false
        @logo = false
        { layout: true }
      else
        @nav = true
        @logo = true
        { layout: true }
      end
    end
end
