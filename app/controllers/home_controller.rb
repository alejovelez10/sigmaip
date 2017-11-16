class HomeController < ApplicationController
  def index

  end
  def inicio
    @services = Service.all.order(updated_at: :asc)
    @team = Team.all.order(order: :desc)
  end	

  def servicios
    @services = Service.all.order(updated_at: :asc)
  end

  def servicio
    @servicio = Service.find(params[:id])
  end

  def nosotros
    
  end
end
