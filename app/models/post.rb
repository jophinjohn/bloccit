class Post < ActiveRecord::Base
    has_many :comments
    belongs_to :user
    #default_scope { order('created_at DESC') }
    scope :ordered_by_title, -> { order('title DESC' )}
    scope :ordered_by_reverse_created_at,  ->(time) { where("created_at < ?", time) }
    
end


# == Schema Information
#exit

# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#
