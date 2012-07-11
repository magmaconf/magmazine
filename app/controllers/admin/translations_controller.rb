class Admin::TranslationsController < ActionController::Base
  before_filter :authenticate_user!
  before_filter :load_translations
  layout 'admin'

  def index
  end

  def edit
    @translation = Translation.find params[:id]
    @query = params[:query]
  end

  def update

    translation = Translation.find params[:id]
    translation.update_attributes params[:value]

    redirect_to filtered_translations_path(params[:translation][:query]),
      notice: "#{translation.locale}.#{translation.key} has been updated"
  end

  def load_translations
    query ||= params[:query] || 'magmazine'
    @translations = Translation.filtered_trans(query)
  end
end
