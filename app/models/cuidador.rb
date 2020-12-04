class Cuidador < ApplicationRecord
  after_initialize do
    build_animal if new_record? && animal.blank?
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :animal, inverse_of: :cuidador
         accepts_nested_attributes_for :animal
end
