class Product < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "400x400#", small: "350x250>"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
