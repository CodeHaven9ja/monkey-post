# == Schema Information
#
# Table name: clubs
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  address        :string(255)
#  stadium_id     :integer
#  img_url        :string(255)
#  established_on :date
#  created_at     :datetime
#  updated_at     :datetime
#

class Club < ActiveRecord::Base
	has_many :fixtures
end
