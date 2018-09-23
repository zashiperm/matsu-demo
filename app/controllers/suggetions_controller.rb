class SuggetionsController < ApplicationController
  before_action :set_suggetion, only: [:show, :edit, :update, :destroy]

  # GET /suggetions
  # GET /suggetions.json
  def index
    @suggetions = Suggetion.all
  end

  # GET /suggetions/1
  # GET /suggetions/1.json
  def show
  end

  # GET /suggetions/new
  def new
    @suggetion = Suggetion.new
  end

  # GET /suggetions/1/edit
  def edit
    @suggetion = Suggetion.find(params[:id])
  end

  # POST /suggetions
  # POST /suggetions.json
  def create
    @suggetion = Suggetion.new(suggetion_params)

    respond_to do |format|
      if @suggetion.save
        format.html { redirect_to @suggetion, notice: 'Suggetion was successfully created.' }
        format.json { render :show, status: :created, location: @suggetion }
      else
        format.html { render :new }
        format.json { render json: @suggetion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suggetions/1
  # PATCH/PUT /suggetions/1.json
  def update
    respond_to do |format|
      if @suggetion.update(suggetion_params)
        format.html { redirect_to @suggetion, notice: 'Suggetion was successfully updated.' }
        format.json { render :show, status: :ok, location: @suggetion }
      else
        format.html { render :edit }
        format.json { render json: @suggetion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suggetions/1
  # DELETE /suggetions/1.json
  def destroy
    @suggetion.destroy
    respond_to do |format|
      format.html { redirect_to suggetions_url, notice: 'Suggetion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suggetion
      @suggetion = Suggetion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suggetion_params
      params.require(:suggetion).permit(:username, :customername, :moviedate, :estimatedate, :closestatus, :memo, :flag)
    end

    def movie
      @message = "Hello"
    end

    def estimate
      @message = "Hello"
    end
end
