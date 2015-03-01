# == Schema Information
#
# Table name: arrivals
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  date       :datetime
#  status     :integer          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Arrival < ActiveRecord::Base
	enum status: [:closed, :on_time, :delayed, :landing, :landed]
end
