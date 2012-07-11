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
    if translation.update_attribute :value,params[:translation][:value]
      flash[:notice] = "#{translation.locale}.#{translation.key} has been updated"
      redirect_to filtered_translations_path(params[:translation][:query])
    else
      redirect_to :back
        flash[:error] = "#{translation.locale}.#{translation.key} Could not updated"
    end
  end

  def load_translations
    query ||= params[:query] || 'magmazine'
    @translations = Translation.filtered_trans(query)
  end
end
