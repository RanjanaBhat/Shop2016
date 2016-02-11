class Product < ActiveRecord::Base
	has_many :line_items
	belongs_to :orderdetail
	#validates :attachment, :attachment_content_type => { :content_type => ['image/png', 'image/jpg']}
	#has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 	#validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	 do_not_validate_attachment_file_type :photo
	 has_attached_file :photo
	 has_permalink :name
	 def to_param
	 	permalink
	 end
	 #has_attached_file :photo, :styles => 
         # { :medium => "300x300>", :thumb => "100x100>" }
	 #validates_attachment_content_type :image, :content_type => ["image/jpg","image/jpeg", "image/png", "image/gif"]
end
