class HomeController < ApplicationController
  def index

  end
  def inicio
    @services = Service.all.order(updated_at: :asc)
    @team = Team.all.order(order: :asc)
  end	

  def servicios
    @services = Service.all.order(updated_at: :asc)
  end

  def servicio
    @servicio = Service.find(params[:id])
  end

  def equipo
    @equipo = Team.find(params[:id])
  end

  def nosotros
     @team = Team.all.order(order: :asc)
  end

  def contactenos
     
  end

  def create_contacto

    @contacto = Contact.new(name: params[:name],subject: params[:subject],email: params[:email],company: params[:company],message: params[:message])
    @contacto.save
        
   
     
  end

  def pqrf
     
  end


    def create_pqrf

    @claim = Claim.new(name: params[:name],typep: params[:typep],email: params[:email],company: params[:company],message: params[:message])
    @claim.save
        
   
     
  end

    def trabajemos
     
  end


    def create_trabajo

    @job = Job.new(name: params[:name],level: params[:level],email: params[:email],phone: params[:phone],description: params[:description], file: params[:file])
    @job.save

        
   
     
  end

end
