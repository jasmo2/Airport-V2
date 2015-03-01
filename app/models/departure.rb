# == Schema Information
#
# Table name: departures
#
#  id         :integer          not null, primary key
#  flight_id  :integer
#  date       :datetime
#  status     :integer          default("0")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Departure < ActiveRecord::Base
	enum status: [:closed, :on_gate, :boarding, :took_off]
end
