class Comment < ActiveRecord::Base
  belongs_to :post
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  post_id    :integer
#  created_at :datetime
#  updated_at :datetime
#
