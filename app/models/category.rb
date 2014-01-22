class Category < ActiveRecord::Base
  attr_accessible :name, :items, :subcategories, :parent_category, :products
  has_many :products
  has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
  belongs_to :parent_category, :class_name => "Category"
end
