class Driver < ActiveRecord::Base
  has_many :metrics, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, :joined_on, presence: true
  
  validates :phone_number, length: { minimum: 7 }

  validates :image_file_name, allow_blank: true, format: {
    with:    /\w+.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }

  def average_stars
    reviews.average(:stars)
  end
  
end
