class Admin::ContentsController < ActionController::Base

  before_filter :authenticate_user!

  def index
    @translations = filtered_translations available_translations
  end

  private
    def available_translations
      keys = []

      Dir['config/locales/e*.yml'].each do |file|
        parsed_file = YAML.load_file file
        I18n::Backend::ActiveRecord.new.flatten_keys parsed_file, nil do |key, value|
          keys << key
        end
      end

      keys
    end

    def filtered_translations keys
      keys.keep_if {|k| k =~ /^en\.editorial\./ }
    end
end
