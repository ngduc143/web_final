class Cosmetic < ApplicationRecord
  has_one :placement, dependent: :destroy, inverse_of: :cosmetic

  accepts_nested_attributes_for :placement
  
  validates_presence_of :name ,:quantity ,:price ,:category ,:brand
  validates_numericality_of :quantity ,:price

end
