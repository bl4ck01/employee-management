# == Schema Information
#
# Table name: employees
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  emp_id          :integer
#  location        :string(255)
#  date_of_joining :date
#  date_of_birth   :date
#  address         :text
#  skills          :text
#  user_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_employees_on_user_id  (user_id)
#

class Employee < ActiveRecord::Base
  belongs_to :user
  validates :name,:emp_id,:location,:date_of_joining,:date_of_birth,:address,:skills, presence: true
end
