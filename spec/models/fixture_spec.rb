# == Schema Information
#
# Table name: fixtures
#
#  id             :integer          not null, primary key
#  home_club      :integer
#  away_club      :integer
#  stadium_id     :integer
#  referee_id     :integer
#  competition_id :integer
#  fix_time       :datetime
#  created_at     :datetime
#  updated_at     :datetime
#  home_score     :integer
#  away_score     :integer
#

require 'spec_helper'

describe Fixture do
  pending "add some examples to (or delete) #{__FILE__}"
end
