class Student < ActiveRecord::Base
  validates :first_name, :last_name, :email, :cell_phone, :work_phone, :home_phone, presence: true
  validates :email, :format => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :cell_phone, :work_phone, :home_phone, :format => {
      with: (/(([0-9]{3})-([0-9]{3})-([0-9]{4}))\z/),
      message: "should be in the format xxx-xxx-xxxx"
      }
end
