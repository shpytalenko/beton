class Product < ActiveRecord::Base
  attr_accessible :name, :description, :price, :category, :category_id, :image
  belongs_to :category
  has_attached_file :image, :styles => { :medium => "200x200#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.jpg"
end
