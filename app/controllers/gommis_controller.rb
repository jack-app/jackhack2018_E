class GommisController < ApplicationController
  before_action :set_gommi, only: [:show, :edit, :update, :destroy]

  # GET /gommis
  # GET /gommis.json
  def index
    @gommis = Gommi.all
  end
  # GET /gommis/1
  # GET /gommis/1.json
  def show
    @gommis_count = Gommi.count
  end

def pick
  @gommis_count = Gommi.count
  @gommis = Gommi.offset(rand(Gommi.count)).first
end

def complete
end
  # GET /gommis/new
  def new
    @gommi = Gommi.new
  end

  # GET /gommis/1/edit
  def edit
  end

  # POST /gommis
  # POST /gommis.json
  def create
    @gommi = Gommi.new(gommi_params)

    respond_to do |format|
      if @gommi.save
        format.html { redirect_to gommis_complete_path, notice: 'Gommi was successfully created.' }
        format.json { render :show, status: :created, location: @gommi }
      else
        format.html { render :new }
        format.json { render json: @gommi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gommis/1
  # PATCH/PUT /gommis/1.json
  def update
    respond_to do |format|
      if @gommi.update(gommi_params)
        format.html { redirect_to @gommi, notice: 'Gommi was successfully updated.' }
        format.json { render :show, status: :ok, location: @gommi }
      else
        format.html { render :edit }
        format.json { render json: @gommi.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /gommis/1
  # DELETE /gommis/1.json
  def destroy
    @gommi.destroy
    respond_to do |format|
      format.html { redirect_to gommis_url, notice: 'Gommi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gommi
      @gommi = Gommi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gommi_params
      params.require(:gommi).permit(:title, :explanation, :kind)
    end
end
