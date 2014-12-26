class Pic < ActiveRecord::Base

	validates :title, presence: true
	validates_length_of :title, :minimum => 1, :maximum => 120, :allow_blank => false

	validates :description, presence: true
	validates_length_of :description, :minimum => 1, :maximum => 255, :allow_blank => false
	
	validates :image, presence: true

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x150>" }, :default_url => "404img.png"
  	validates_attachment_content_type :image, :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png", "image/bmp"]
  	validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 5.megabytes
  	
  	belongs_to :user
  	
end
