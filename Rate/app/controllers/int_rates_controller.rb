
class IntRatesController < ApplicationController


  before_action :set_int_rate, only: [:show, :edit, :update, :destroy]

  # GET /int_rates
  # GET /int_rates.json
  def index
    @int_rates = IntRate.all
  end

  # GET /int_rates/1
  # GET /int_rates/1.json
  def show
  end

  # GET /int_rates/new
  def new
    @int_rate = IntRate.new
  end

  # GET /int_rates/1/edit
  def edit
  end

  # POST /int_rates
  # POST /int_rates.json
  def create
    @int_rate = IntRate.new(int_rate_params)
    @int_rate.pull_rates

    respond_to do |format|
      if @int_rate.save
        format.html { redirect_to @int_rate, notice: 'Int rate was successfully created.' }
        format.json { render :show, status: :created, location: @int_rate }
      else
        format.html { render :new }
        format.json { render json: @int_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /int_rates/1
  # PATCH/PUT /int_rates/1.json
  def update
    respond_to do |format|
      if @int_rate.update(int_rate_params)
        format.html { redirect_to @int_rate, notice: 'Int rate was successfully updated.' }
        format.json { render :show, status: :ok, location: @int_rate }
      else
        format.html { render :edit }
        format.json { render json: @int_rate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /int_rates/1
  # DELETE /int_rates/1.json
  def destroy
    @int_rate.destroy
    respond_to do |format|
      format.html { redirect_to int_rates_url, notice: 'Int rate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_int_rate
      @int_rate = IntRate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def int_rate_params
      params.require(:int_rate).permit(:InterestRate, :EffectiveDate, :CreationDate)
    end
end
