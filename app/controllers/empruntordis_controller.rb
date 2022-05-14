class EmpruntordisController < ApplicationController
  before_action :set_empruntordi, only: %i[ show edit update destroy ]

  # GET /empruntordis or /empruntordis.json
  def index
    @empruntordis = Empruntordi.all
  end

  # GET /empruntordis/1 or /empruntordis/1.json
  def show
  end

  # GET /empruntordis/new
  def new
    @empruntordi = Empruntordi.new
  end

  # GET /empruntordis/1/edit
  def edit
  end

  # POST /empruntordis or /empruntordis.json
  def create
    if Empruntordi.count(:adherent_id) < 1
      @empruntordi = Empruntordi.new(empruntordi_params)

      respond_to do |format|
        if @empruntordi.save
          format.html { redirect_to empruntordi_url(@empruntordi), notice: "Empruntordi was successfully created." }
          format.json { render :show, status: :created, location: @empruntordi }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @empruntordi.errors, status: :unprocessable_entity }
        end
      end
    else 
      redirect_to new_empruntordi_path , notice:"Cet Adherent a atteint la limite 1 d'emprunt d'ordinateurs! Ne peut plus emprunter !"
    end
  end

  # PATCH/PUT /empruntordis/1 or /empruntordis/1.json
  def update
    respond_to do |format|
      if @empruntordi.update(empruntordi_params)
        format.html { redirect_to empruntordi_url(@empruntordi), notice: "Empruntordi was successfully updated." }
        format.json { render :show, status: :ok, location: @empruntordi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @empruntordi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empruntordis/1 or /empruntordis/1.json
  def destroy
    @empruntordi.destroy

    respond_to do |format|
      format.html { redirect_to empruntordis_url, notice: "Empruntordi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empruntordi
      @empruntordi = Empruntordi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def empruntordi_params
      params.require(:empruntordi).permit(:adherent_id, :ordinateur_id)
    end
end
