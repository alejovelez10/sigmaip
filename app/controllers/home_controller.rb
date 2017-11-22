class HomeController < ApplicationController
  def index

  end
  def inicio
    @services = Service.all.order(updated_at: :asc)
    @team = Team.all.order(order: :asc)
    @experiences = Experience.all
    @customers = Customer.all
    @noticias = Notice.last(3)
  end	

  def servicios
    @services = Service.all.order(updated_at: :asc)
  end

  def servicio
    @servicio = Service.find(params[:id])
  end
  
  def experiencias
    @experiencias = Experience.all.order(updated_at: :asc)
  end

  def experiencia
    @experiencia = Experience.find(params[:id])
  end

   def noticias
    
    @noticias1 = Notice.all.order(updated_at: :desc)
    if params[:categoria] == "todas"
    @noticias= Notice.all.paginate(page: params[:page],:per_page => 20).order(updated_at: :desc)
      else
        categoria = NewCategory.where(name: params[:categoria]).first.id 
        @noticias= Notice.where(new_category: categoria).paginate(page: params[:page],:per_page => 20).order(updated_at: :desc)
      end
    @categories = NewCategory.all

  end

  def noticia
     @categories = NewCategory.all

     @noticias1 = Notice.all.order(updated_at: :desc)
    @noticia = Notice.find(params[:id])
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
    if @contacto.save
        AlertMailer.contact_mail(@contacto).deliver    
    end
     
  end

    def create_comentario

    @comentario = Comment.new(name: params[:name],email: params[:email],phone: params[:phone],message: params[:message], notice_id: params[:notice_id])
    if @comentario.save
         AlertMailer.comment_mail(@comentario).deliver
    end
        
   
     
  end

  def pqrf
     
  end


    def create_pqrf

    @claim = Claim.new(name: params[:name],typep: params[:typep],email: params[:email],company: params[:company],message: params[:message])
    if @claim.save
        AlertMailer.pqrs_mail(@claim).deliver
    end        
   
     
  end

    def trabajemos
     
  end


    def create_trabajo

    @job = Job.new(name: params[:name],level: params[:level],email: params[:email],phone: params[:phone],description: params[:description], file: params[:file])
    if @job.save
              AlertMailer.job_mail(@job).deliver

    end
        
   
     
  end

end
