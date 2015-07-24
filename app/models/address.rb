class Address < ActiveRecord::Base
  belongs_to :hotel

  validates  :country, :city, :street, presence: true,
                   length: { minimum: 3 }
end
