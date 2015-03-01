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

require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
