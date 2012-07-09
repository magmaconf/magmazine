class Admin::TranslationsController < ActionController::Base
  before_filter :authenticate_user!
  before_filter :load_translations
  layout 'admin'

  def index
  end

  def edit
    @translation = Translation.find params[:id]
  end

  def update
    translation = Translation.find params[:id]
    translation.update_attributes params[:translation]

    redirect_to translations_path,
      notice: "#{translation.locale}.#{translation.key} has been updated"
  end

  def load_translations
    query = params[:query] || 'magmazine'
    @translations ||= Translation.filtered_trans(query)
  end
end
