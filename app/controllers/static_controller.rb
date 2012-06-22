class StaticController < ApplicationController
  def show
    page = params[:id]
    begin
      render :template => "static/main", locals: {page: page}
    rescue ActionView::MissingTemplate
      redirect_to "/views/404.html.haml"
    end
  end
end
