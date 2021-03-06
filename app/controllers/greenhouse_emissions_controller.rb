class GreenhouseEmissionsController < ApplicationController

  before_action :get_enterprise

  def index
    greenhouse_missions = GreenhouseEmissionService::Index.call(@current_user.enterprise.id)
    data = {
      greenhouse_missions: greenhouse_missions.map {|greenhouse_mission| GreenhouseEmissionSerializer.new(greenhouse_mission)}
    }
    render_data data
  end

  def update_or_create
    greenhouse_mission = GreenhouseEmissionService::UpdateOrCreate.call(@enterprise, greenhouse_emission_params)
    data = {
      greenhouse_mission: GreenhouseEmissionSerializer.new(greenhouse_mission)
    }
    render_data data
  end

  def show
    greenhouse_mission = GreenhouseEmissionService::Show.call(params[:id])
    data = {
      greenhouse_mission: GreenhouseEmissionSerializer.new(greenhouse_mission)
    }
    render_data data
  end

  def destroy
    GreenhouseEmissionService::Destroy.call(params[:id])
  end

  def get_enterprise
    @enterprise = @current_user.enterprise
  end

  def greenhouse_emission_params
    params.require(%i[year_of_investigation carbon_dioxide methane nitrous_dioxide emission_reason_id ])
    params.permit(:year_of_investigation, :carbon_dioxide, :methane, :nitrous_dioxide, :emission_reason_id, :product_id)
  end

end
