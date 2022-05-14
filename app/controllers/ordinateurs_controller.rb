class OrdinateursController < ApplicationController
  before_action :set_ordinateur, only: %i[ show edit update destroy ]

  # GET /ordinateurs or /ordinateurs.json
  def index
    @ordinateurs = Ordinateur.search(params[:search])
  end

  # GET /ordinateurs/1 or /ordinateurs/1.json
  def show
  end

  # GET /ordinateurs/new
  def new
    @ordinateur = Ordinateur.new
  end

  # GET /ordinateurs/1/edit
  def edit
  end

  # POST /ordinateurs or /ordinateurs.json
  def create
    @ordinateur = Ordinateur.new(ordinateur_params)

    respond_to do |format|
      if @ordinateur.save
        format.html { redirect_to ordinateur_url(@ordinateur), notice: "Ordinateur was successfully created." }
        format.json { render :show, status: :created, location: @ordinateur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordinateurs/1 or /ordinateurs/1.json
  def update
    respond_to do |format|
      if @ordinateur.update(ordinateur_params)
        format.html { redirect_to ordinateur_url(@ordinateur), notice: "Ordinateur was successfully updated." }
        format.json { render :show, status: :ok, location: @ordinateur }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ordinateur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordinateurs/1 or /ordinateurs/1.json
  def destroy
    @ordinateur.destroy

    respond_to do |format|
      format.html { redirect_to ordinateurs_url, notice: "Ordinateur was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordinateur
      @ordinateur = Ordinateur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ordinateur_params
      params.require(:ordinateur).permit(:marque, :nbr_copies, :search)
    end
end
