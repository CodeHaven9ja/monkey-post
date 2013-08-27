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

require 'spec_helper'

describe Club do
  pending "add some examples to (or delete) #{__FILE__}"
end
