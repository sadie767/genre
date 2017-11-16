class Photo < ActiveRecord::Base

  validates :url, :presence => true

  scope :today, -> { where("created_at >=?", Time.now.beginning_of_day )}

  scope :ten_most_recent, -> { order(created_at: :desc).limit(10)}

  scope :search, -> (url_parameter) { where("url like ?", "%#{url_parameter}%")}
end
