# == Schema Information
#
# Table name: passengers
#
#  id                     :integer          not null, primary key
#  name                   :string
#  passport               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#

class Passenger < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :passport, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :authentication_keys => [:passport]

  has_many :tickets
  has_many :flights, through: :tickets
end
