class Hotel < ActiveRecord::Base

  belongs_to :user
  has_many   :comments, dependent: :destroy

  validates  :title, presence: true,
                     length: { minimum: 5 }

  def average_rate
    comments.average(:rate).round(2)
  end
  
end
