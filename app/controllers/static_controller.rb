class StaticController < ApplicationController
  def show
    page = params[:id]
    begin
      render page, layout: false
    rescue ActionView::MissingTemplate
      redirect_to "/views/404.html.haml"
    end
  end
end
