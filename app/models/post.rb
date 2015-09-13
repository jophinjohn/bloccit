class Post < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    belongs_to :topic
    has_one :summary
    default_scope { order('created_at DESC') }
end


# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#
