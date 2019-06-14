class PictureUploadsController < ApplicationController
  before_action :set_picture_upload, only: [:show, :edit, :update, :destroy]

  # GET /picture_uploads
  # GET /picture_uploads.json
  def index
    @picture_uploads = PictureUpload.all
  end

  # GET /picture_uploads/1
  # GET /picture_uploads/1.json
  def show
  end

  # GET /picture_uploads/new
  def new
    @picture_upload = PictureUpload.new
  end

  # GET /picture_uploads/1/edit
  def edit
  end

  # POST /picture_uploads
  # POST /picture_uploads.json
  def create
    @picture_upload = PictureUpload.new(picture_upload_params)

    respond_to do |format|
      if @picture_upload.save
        format.html { redirect_to @picture_upload, notice: 'Picture upload was successfully created.' }
        format.json { render :show, status: :created, location: @picture_upload }
      else
        format.html { render :new }
        format.json { render json: @picture_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picture_uploads/1
  # PATCH/PUT /picture_uploads/1.json
  def update
    respond_to do |format|
      if @picture_upload.update(picture_upload_params)
        format.html { redirect_to @picture_upload, notice: 'Picture upload was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture_upload }
      else
        format.html { render :edit }
        format.json { render json: @picture_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_uploads/1
  # DELETE /picture_uploads/1.json
  def destroy
    @picture_upload.destroy
    respond_to do |format|
      format.html { redirect_to picture_uploads_url, notice: 'Picture upload was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_upload
      @picture_upload = PictureUpload.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_upload_params
      params.require(:picture_upload).permit(:title, :description)
    end
end
