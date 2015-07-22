class Comment < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user

  validates  :msg, presence: true,
                   length: { minimum: 5 }
end
