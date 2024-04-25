class City < ApplicationRecord
  has_many :strolls
  has_many :dogistters
  has_many :dogs
end
