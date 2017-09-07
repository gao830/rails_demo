class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 50}
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
  
  
  # def description=(val)
  #   write_attribute(:description, val.gsub("\u00A0", " "))
  
  # end
  
  
  
  
end 
