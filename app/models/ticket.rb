# == Schema Information
#
# Table name: tickets
#
#  id           :integer          not null, primary key
#  flight_id    :integer
#  passenger_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Ticket < ActiveRecord::Base
	belongs_to :flight
	belongs_to :passenger
end
