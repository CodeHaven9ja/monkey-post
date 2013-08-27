# == Schema Information
#
# Table name: news
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :string(255)
#  img_url     :string(255)
#  user_id     :integer
#  category_id :integer
#  tag_id      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class News < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :tags
end
