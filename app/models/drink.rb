class Drink < ApplicationRecord
  SIZES = %w[S M L]
  CATEGORIES = %w[Coffee Tea Hot\ Chocolate Other ]
  validates_presence_of :name, :category, :quantity, :price, :size, :description
  validates_numericality_of :quantity, :price
  enum size: [:S, :M, :L]
end
