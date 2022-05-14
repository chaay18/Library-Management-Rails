class EmpruntDocsController < ApplicationController
  before_action :set_emprunt_doc, only: %i[ show edit update destroy ]

  # GET /emprunt_docs or /emprunt_docs.json
  def index
    @emprunt_docs = EmpruntDoc.all
  end

  # GET /emprunt_docs/1 or /emprunt_docs/1.json
  def show
  end

  # GET /emprunt_docs/new
  def new
    @emprunt_doc = EmpruntDoc.new
  end

  # GET /emprunt_docs/1/edit
  def edit
  end

  # POST /emprunt_docs or /emprunt_docs.json
  def create
    if EmpruntDoc.count(:adherent_id) <= 5
      @emprunt_doc = EmpruntDoc.new(emprunt_doc_params)

      respond_to do |format|
        if @emprunt_doc.save
          format.html { redirect_to emprunt_doc_url(@emprunt_doc), notice: "Emprunt doc was successfully created." }
          format.json { render :show, status: :created, location: @emprunt_doc }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @emprunt_doc.errors, status: :unprocessable_entity }
        end
      end
    else 
      redirect_to new_emprunt_doc_path , notice: "Cet adherent a atteint la limite 5 d'emprunts !" 
    end 
  end

  # PATCH/PUT /emprunt_docs/1 or /emprunt_docs/1.json
  def update
    respond_to do |format|
      if @emprunt_doc.update(emprunt_doc_params)
        format.html { redirect_to emprunt_doc_url(@emprunt_doc), notice: "Emprunt doc was successfully updated." }
        format.json { render :show, status: :ok, location: @emprunt_doc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @emprunt_doc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emprunt_docs/1 or /emprunt_docs/1.json
  def destroy
    @emprunt_doc.destroy

    respond_to do |format|
      format.html { redirect_to emprunt_docs_url, notice: "Emprunt doc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emprunt_doc
      @emprunt_doc = EmpruntDoc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emprunt_doc_params
      params.require(:emprunt_doc).permit(:adherent_id, :document_id)
    end
end
