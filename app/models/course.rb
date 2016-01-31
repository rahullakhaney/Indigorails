class Course < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: [:slugged, :finders]

has_many :steps

validates :name, presence: true, length: { maximum: 50 }
validates :content, presence: true, length: { maximum: 500 }
validates :price, presence: true, numericality: { only_integer: true }

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
