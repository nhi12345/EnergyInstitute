class Enterprise < ApplicationRecord
  validates :name, presence: true
  validates :tax_code, presence: true, uniqueness: true
  belongs_to :sector
  has_many :users
  has_one :enterprise_detail
  has_many :energy_consumptions
  has_many :products
  has_many :greenhouse_emissions
end
