class FileSystemsController < ApplicationController
  before_action :set_file_system, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
  # GET /file_systems
  # GET /file_systems.json
  def index

   if current_user.rol.admin_doc
     
         @file_systems = FileSystem.where(level: 0, folder_id: 0).search(params[:search])
   else
     
       @file_systems = Rol.find(current_user.rol.id).file_systems.where(level: 0, folder_id: 0).search(params[:search])
   end

  end

  # GET /file_systems/1
  # GET /file_systems/1.json
  def show
  end


  def sub_folder

    @level = params[:level]
    @folder_id = params[:id]
    puts @folder_id
    @file = FileSystem.find(@folder_id)
    @array = @file.route.split(",").map { |s| s.to_i }
    puts @array 
   # @route_level = []
   # @array.each do |i|
    
      #@route_level << FileSystem.where(folder_id: i.to_i).first.level
    
   # end
   # puts @route_level
    #@array = []
    #@array = FileSystem.find(@file.folder_id).id
    #(@level.to_i - 1).downto(1) { |i|
        #(@array << FileSystem.find(@file.folder_id).id) if (@file.folder_id != "0" && @file.folder_id != 0) 
         # puts i
      # }
    #puts @array
      if current_user.rol.admin_doc
     
          @file_systems = FileSystem.where(level: params[:level], folder_id: params[:id]).search(params[:search]).order(type_file: :desc).order(created_at: :desc)
   else
     
       @file_systems = Rol.find(current_user.rol.id).file_systems.where(level: params[:level], folder_id: params[:id]).search(params[:search]).order(type_file: :desc).order(created_at: :desc)
   end
    
  end
 
 def create_document

    FileSystem.create(name: params[:name], level: params[:level] ,folder_id:params[:folder_id],type_file: params[:type_file])
    if params[:level] == 0 
    redirect_to file_systems_path
    else
      redirect_to sub_folder_path(params[:level], params[:folder_id])
    end


 end
  # GET /file_systems/new
  def new
    @type = params[:type]
    @type_filev = false
    @level = params[:level]
    @folder_id = params[:folder_id]
    @type == "carpeta" ? @type_filev = true : @type_filev = false 
    @file_system = FileSystem.new
  end

  # GET /file_systems/1/edit
  def edit
  end

  # POST /file_systems
  # POST /file_systems.json
  def create
    @file_system = FileSystem.new(file_system_params)  


    respond_to do |format|
      if @file_system.save
          
          


        if @file_system.level == 0
          @file_system.route = 0
          @file_system.save
        else
         @file = FileSystem.find(@file_system.folder_id).route
         @file_system.route = @file + "," + @file_system.folder_id
         @file_system.save
        end
        format.html { redirect_to (@file_system.level == 0 ? file_systems_path : sub_folder_path(@file_system.level, @file_system.folder_id)) , notice: 'File system was successfully created.' 


        }
        format.json { render :show, status: :created, location: @file_system }
      else
        format.html { render :new }
        format.json { render json: @file_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_systems/1
  # PATCH/PUT /file_systems/1.json
  def update
    respond_to do |format|
      if @file_system.update(file_system_params)
        format.html { redirect_to (@file_system.level == 0 ? file_systems_path : sub_folder_path(@file_system.level, @file_system.folder_id)) , notice: 'File system was successfully created.' 


        }
        format.json { render :show, status: :ok, location: @file_system }
      else
        format.html { render :edit }
        format.json { render json: @file_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_systems/1
  # DELETE /file_systems/1.json
  def destroy
    @file_system.destroy
    respond_to do |format|
      format.html { redirect_to file_systems_url, notice: 'File system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_system
      @file_system = FileSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def file_system_params
      params.require(:file_system).permit(:name, :type_file, :file, :level, :folder_id, :user_id, :code, :route,:rol_ids => [])
    end
end
