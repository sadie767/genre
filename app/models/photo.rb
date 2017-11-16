class Photo < ActiveRecord::Base
  belongs_to :user
  
  validates :url, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true
  validates :user_id, :presence => true

  scope :alphabetical, -> { Photo.order(:title) }

  # scope :today, -> { where("created_at >=?", Time.now.beginning_of_day )}

  scope :creation, -> { order(created_at: :desc) }
  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}
  #
  # scope :search, -> (url_parameter) { where("url like ?", "%#{url_parameter}%")}
end
