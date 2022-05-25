class GestorsController < ApplicationController
  before_action :set_gestor, only: %i[ show edit update destroy ]

  # GET /gestors or /gestors.json
  def index
    if params[:search].present?
      @gestors = Gestor.where("estado =?",params[:search])
    else
      @gestors = Gestor.all
    end
    

  end

  # GET /gestors/1 or /gestors/1.json
  def show
  end

  # GET /gestors/new
  def new
    @gestor = Gestor.new
  end

  # GET /gestors/1/edit
  def edit
  end

  # POST /gestors or /gestors.json
  def create
    @gestor = Gestor.new(gestor_params)

    respond_to do |format|
      if @gestor.save
        format.html { redirect_to gestor_url(@gestor), notice: "Gestor was successfully created." }
        format.json { render :show, status: :created, location: @gestor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gestor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gestors/1 or /gestors/1.json
  def update
    respond_to do |format|
      if @gestor.update(gestor_params)
        format.html { redirect_to gestor_url(@gestor), notice: "Gestor was successfully updated." }
        format.json { render :show, status: :ok, location: @gestor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gestor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gestors/1 or /gestors/1.json
  def destroy
    @gestor.destroy

    respond_to do |format|
      format.html { redirect_to gestors_url, notice: "Gestor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestor
      @gestor = Gestor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gestor_params
      params.require(:gestor).permit(:nombre, :descripcion, :fechacom, :fechater, :estado)
    end
end
