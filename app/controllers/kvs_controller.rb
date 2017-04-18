class KvsController < ApplicationController
  before_action :set_kv, only: [:show, :edit, :update, :destroy]

  # GET /kvs
  # GET /kvs.json
  def index
    @kvs = Kv.all
  end

  # GET /kvs/1
  # GET /kvs/1.json
  def show
  end

  # GET /kvs/new
  def new
    @kv = Kv.new
  end

  # GET /kvs/1/edit
  def edit
  end

  # POST /kvs
  # POST /kvs.json
  def create
    @kv = Kv.new(kv_params)

    respond_to do |format|
      if @kv.save
        format.html { redirect_to @kv, notice: 'Kv was successfully created.' }
        format.json { render :show, status: :created, location: @kv }
      else
        format.html { render :new }
        format.json { render json: @kv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kvs/1
  # PATCH/PUT /kvs/1.json
  def update
    respond_to do |format|
      if @kv.update(kv_params)
        format.html { redirect_to @kv, notice: 'Kv was successfully updated.' }
        format.json { render :show, status: :ok, location: @kv }
      else
        format.html { render :edit }
        format.json { render json: @kv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kvs/1
  # DELETE /kvs/1.json
  def destroy
    @kv.destroy
    respond_to do |format|
      format.html { redirect_to kvs_url, notice: 'Kv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kv
      @kv = Kv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kv_params
      params.require(:kv).permit(:key, :val)
    end
end
