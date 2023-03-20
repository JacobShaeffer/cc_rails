class MetadataTypes::MetadataController < ApplicationController
  before_action :set_metadatum, only: %i[ show edit update destroy ]

  # GET /metadata or /metadata.json
  def index
    @metadata = Metadatum.all
  end

  # GET /metadata/1 or /metadata/1.json
  def show
  end

  # GET /metadata/new
  def new
    @metadata_type = MetadataType.find(params[:metadata_type_id])
    @metadatum = Metadatum.new
  end

  # GET /metadata/1/edit
  def edit
  end

  # POST /metadata or /metadata.json
  def create
    @metadata_type = MetadataType.find(params[:metadata_type_id])
    @metadatum = Metadatum.new(metadatum_params)
    @metadatum.metadata_type = @metadata_type

    respond_to do |format|
      if @metadatum.save
        format.html { redirect_to @metadata_type, notice: "Metadatum was successfully created." }
        format.json { render :show, status: :created, location: @metadata_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @metadata_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metadata/1 or /metadata/1.json
  def update
    respond_to do |format|
      if @metadatum.update(metadatum_params)
        format.html { redirect_to metadatum_url(@metadatum), notice: "Metadatum was successfully updated." }
        format.json { render :show, status: :ok, location: @metadatum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metadata/1 or /metadata/1.json
  def destroy
    print("destroying metadatum")
    @metadata_type = MetadataType.find(params[:metadata_type_id])
    @metadatum = Metadatum.find(params[:id])
    title = @metadatum.name

    if @metadatum.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to @metadata_type
    else
      flash.now[:alert] = "There was an error deleting the metadatum."
      render :show
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metadatum
      @metadatum = Metadatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def metadatum_params
      params.require(:metadatum).permit(:name, :metadata_type_id)
    end
end
