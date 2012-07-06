class Translation < ActiveRecord::Base

  def filtered_trans(query)
    self.where(:all, :conditions =>["key LIKE?","%#{query}%"])
  end
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

