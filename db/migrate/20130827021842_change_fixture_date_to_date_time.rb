class ChangeFixtureDateToDateTime < ActiveRecord::Migration
  def change
	change_column	:fixtures, :fix_time, :datetime
  end
end
