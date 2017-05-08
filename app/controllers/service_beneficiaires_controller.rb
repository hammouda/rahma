class ServiceBeneficiairesController < ApplicationController
  before_action :set_service_beneficiaire, only: [:show, :edit, :update, :destroy]

  # GET /service_beneficiaires
  # GET /service_beneficiaires.json
  def index
    @service_beneficiaires = if params[:term]
        ServiceBeneficiaire.where('date_service LIKE ?',"%#{params[:term]}%")
    else
        ServiceBeneficiaire.all
    end
  end

  # GET /service_beneficiaires/1
  # GET /service_beneficiaires/1.json
  def show
  end

  # GET /service_beneficiaires/new
  def new
    @service_beneficiaire = ServiceBeneficiaire.new
  end

  # GET /service_beneficiaires/1/edit
  def edit
  end

  # POST /service_beneficiaires
  # POST /service_beneficiaires.json
  def create
    @service_beneficiaire = ServiceBeneficiaire.new(service_beneficiaire_params)

    respond_to do |format|
      if @service_beneficiaire.save
        format.html { redirect_to @service_beneficiaire, notice: 'Service beneficiaire was successfully created.' }
        format.json { render :show, status: :created, location: @service_beneficiaire }
      else
        format.html { render :new }
        format.json { render json: @service_beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_beneficiaires/1
  # PATCH/PUT /service_beneficiaires/1.json
  def update
    respond_to do |format|
      if @service_beneficiaire.update(service_beneficiaire_params)
        format.html { redirect_to @service_beneficiaire, notice: 'Service beneficiaire was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_beneficiaire }
      else
        format.html { render :edit }
        format.json { render json: @service_beneficiaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_beneficiaires/1
  # DELETE /service_beneficiaires/1.json
  def destroy
    @service_beneficiaire.destroy
    respond_to do |format|
      format.html { redirect_to service_beneficiaires_url, notice: 'Service beneficiaire was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_beneficiaire
      @service_beneficiaire = ServiceBeneficiaire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_beneficiaire_params
      params.require(:service_beneficiaire).permit(:cout, :date_service, :service_id, :beneficiaire_id)
    end
end
