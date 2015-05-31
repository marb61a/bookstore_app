class Address < ActiveRecord::Base
  beloongs_to :user
  validates :address_line1, :city, :zipcode, presence: true
end