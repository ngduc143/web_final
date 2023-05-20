class Placement < ApplicationRecord
  belongs_to :cosmetic, inverse_of: :placement
  validates_presence_of :floor ,:product_shelf
  validates_numericality_of :floor ,:product_shelf
end
