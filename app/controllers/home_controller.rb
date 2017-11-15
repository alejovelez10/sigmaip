class HomeController < ApplicationController
  def index

  end
  def inicio
    @services = Service.all.order(updated_at: :asc)
  end	

  def servicios
    @services = Service.all.order(updated_at: :asc)
  end
end
