module GreenhouseEmissionService::Index
  def self.call enterprise_id
    GreenhouseEmission.includes(:greenhouse_emission_details).where(enterprise_id: enterprise_id)
  end 
end