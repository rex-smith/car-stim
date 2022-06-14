class Car < ApplicationRecord
  has_many :variants
  accepts_nested_attributes_for :variants, allow_destroy: true
end
