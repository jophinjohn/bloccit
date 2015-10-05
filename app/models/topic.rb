class Topic < ActiveRecord::Base
    has_many :posts
    self.per_page = 50
end

# == Schema Information
#
# Table name: topics
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  public      :boolean          default(TRUE)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#
