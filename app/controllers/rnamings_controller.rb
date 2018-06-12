class RnamingsController < ApplicationController
  before_action :set_rnaming, only: [:show, :edit, :update, :destroy]

  # GET /rnamings
  # GET /rnamings.json
  def index
    @rnamings = Rnaming.all
  end

  # GET /rnamings/1
  # GET /rnamings/1.json
  def show
  end

  # GET /rnamings/new
  def new
    @rnaming = Rnaming.new
  end

  # GET /rnamings/1/edit
  def edit
  end

  # POST /rnamings
  # POST /rnamings.json
  def create
    @rnaming = Rnaming.new(rnaming_params)

    respond_to do |format|
      if @rnaming.save
        format.html { redirect_to @rnaming, notice: 'Rnaming was successfully created.' }
        format.json { render :show, status: :created, location: @rnaming }
      else
        format.html { render :new }
        format.json { render json: @rnaming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rnamings/1
  # PATCH/PUT /rnamings/1.json
  def update
    respond_to do |format|
      if @rnaming.update(rnaming_params)
        format.html { redirect_to @rnaming, notice: 'Rnaming was successfully updated.' }
        format.json { render :show, status: :ok, location: @rnaming }
      else
        format.html { render :edit }
        format.json { render json: @rnaming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rnamings/1
  # DELETE /rnamings/1.json
  def destroy
    a = @rnaming.categories
    b = a.all.ids
    a.where(:id => b).destroy_all
    @rnaming.destroy
    respond_to do |format|
      format.html { redirect_to rnamings_url, notice: 'Rnaming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rnaming
      @rnaming = Rnaming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rnaming_params
      params[:rnaming].permit(:area)
    end
end
