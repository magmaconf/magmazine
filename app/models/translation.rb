class Translation < ActiveRecord::Base

end
# == Schema Information
#
# Table name: translations
#
#  id             :integer         not null, primary key
#  locale         :string(255)
#  key            :string(255)
#  value          :text
#  interpolations :text
#  is_proc        :boolean         default(FALSE)
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

