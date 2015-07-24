class Hotel < ActiveRecord::Base

  belongs_to :user
  has_many   :comments, dependent: :destroy
  has_one    :address,  dependent: :destroy
  accepts_nested_attributes_for :address

  validates  :title, presence: true,
                     length: { minimum: 3 }

  validates  :stars, presence: true

  mount_uploader :image_url, ImageUploader

  def average_rate
    comments.average(:rate) ? comments.average(:rate).round(2) : 0 
  end
  
end
