desc "i18n management tasks"
namespace "i18n" do

  desc "rewrite all locales"
  task rewrite_all: :environment do
    I18n.backend.load_translations
  end
end
