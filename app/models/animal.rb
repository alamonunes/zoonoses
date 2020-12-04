class Animal < ApplicationRecord
  belongs_to :cuidador, inverse_of: :animal
end
