class MovetypesController < ApplicationController
  before_action :set_movetype, only: [:show, :edit, :update, :destroy]

  # GET /movetypes
  # GET /movetypes.json
  def index
    @movetypes = Movetype.all
  end

  # GET /movetypes/1
  # GET /movetypes/1.json
  def show

  end

  # GET /movetypes/new
  def new
    @movetype = Movetype.new
  end

  # GET /movetypes/1/edit
  def edit
  end

  def showmovetype
    @showtype = params[:movetype_name]
  end

  # POST /movetypes
  # POST /movetypes.json
  def create
    @movetype = Movetype.new(movetype_params)

    respond_to do |format|
      if @movetype.save
        format.html { redirect_to @movetype, notice: 'Movetype was successfully created.' }
        format.json { render :show, status: :created, location: @movetype }
      else
        format.html { render :new }
        format.json { render json: @movetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movetypes/1
  # PATCH/PUT /movetypes/1.json
  def update
    respond_to do |format|
      if @movetype.update(movetype_params)
        format.html { redirect_to @movetype, notice: 'Movetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @movetype }
      else
        format.html { render :edit }
        format.json { render json: @movetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movetypes/1
  # DELETE /movetypes/1.json
  def destroy
    @movetype.destroy
    respond_to do |format|
      format.html { redirect_to movetypes_url, notice: 'Movetype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movetype
      @movetype = Movetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movetype_params
      params.require(:movetype).permit(:movetype_id, :movetype_name, :movetype_desc)
    end
end
