class GreenhouseEmissionSerializer < ActiveModel::Serializer
  attributes :id, :year_of_investigation
  belongs_to :product
  has_many :greenhouse_emission_details
end