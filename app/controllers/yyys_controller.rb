class YyysController < ApplicationController
  before_action :set_yyy, only: [:show, :edit, :update, :destroy]

  # GET /yyys
  # GET /yyys.json
  def index
    @yyys = Yyy.all
  end

  # GET /yyys/1
  # GET /yyys/1.json
  def show
  end

  # GET /yyys/new
  def new
    @yyy = Yyy.new
  end

  # GET /yyys/1/edit
  def edit
  end

  # POST /yyys
  # POST /yyys.json
  def create
    @yyy = Yyy.new(yyy_params)

    respond_to do |format|
      if @yyy.save
        format.html { redirect_to @yyy, notice: 'Yyy was successfully created.' }
        format.json { render :show, status: :created, location: @yyy }
      else
        format.html { render :new }
        format.json { render json: @yyy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yyys/1
  # PATCH/PUT /yyys/1.json
  def update
    respond_to do |format|
      if @yyy.update(yyy_params)
        format.html { redirect_to @yyy, notice: 'Yyy was successfully updated.' }
        format.json { render :show, status: :ok, location: @yyy }
      else
        format.html { render :edit }
        format.json { render json: @yyy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yyys/1
  # DELETE /yyys/1.json
  def destroy
    @yyy.destroy
    respond_to do |format|
      format.html { redirect_to yyys_url, notice: 'Yyy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yyy
      @yyy = Yyy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yyy_params
      params.require(:yyy).permit(:www)
    end
end
