class Hotel < ActiveRecord::Base

  belongs_to :user
  has_many   :comments, dependent: :destroy
  has_one    :address,  dependent: :destroy
  accepts_nested_attributes_for :address

  validates  :title, presence: true,
                     length: { minimum: 3 }

  def average_rate
    comments.average(:rate).round(2) if comments.average(:rate)
  end
  
end
