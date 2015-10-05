class Question < ActiveRecord::Base
end

# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  resolved   :boolean
#  created_at :datetime
#  updated_at :datetime
#
