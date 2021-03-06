class Spree::StoreRequestsController < Spree::StoreController
  # before_action :set_store_request, only: [:show, :edit, :update, :destroy]

  # GET /spree/store_requests
  # def index
  #   @spree_store_requests = Spree::StoreRequest.all
  # end

  # # GET /spree/store_requests/1
  # def show
  # end

  # GET /spree/store_requests/new
  def new
    @spree_store_request = Spree::StoreRequest.new
  end

  # GET /spree/store_requests/1/edit
  # def edit
  # end

  # POST /spree/store_requests
  def create
    @spree_store_request = Spree::StoreRequest.new(store_request_params)

    if @spree_store_request.save
      redirect_to root_path, notice: 'Your request for personal store is created successfully. Admin will contact you soon.Thanks'
    else
      render :new
    end
  end

  # PATCH/PUT /spree/store_requests/1
  # def update
  #   if @spree_store_request.update(store_request_params)
  #     redirect_to @spree_store_request, notice: 'Store request was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # # DELETE /spree/store_requests/1
  # def destroy
  #   @spree_store_request.destroy
  #   redirect_to spree_store_requests_url, notice: 'Store request was successfully destroyed.'
  # end

  private
    # # Use callbacks to share common setup or constraints between actions.
    # def set_store_request
    #   @spree_store_request = Spree::StoreRequest.find(params[:id])
    # end

    # Only allow a trusted parameter "white list" through.
    def store_request_params
      params.require(:store_request).permit(:store_name, :contact_name, :contact_number, :contact_email_address, :store_number, :store_email_address, :store_address, :store_open_hours, :store_social_media, :store_desr, :store_tags, :store_main_img, :store_logo, :store_list_image)
    end
end
