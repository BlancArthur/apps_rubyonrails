class TableausController < ApplicationController
  before_action :set_tableau, only: %i[ show edit update destroy ]

  # GET /tableaus or /tableaus.json
  def index
    @tableaus = Tableau.all
  end

  # GET /tableaus/1 or /tableaus/1.json
  def show
  end

  # GET /tableaus/new
  def new
    @tableau = Tableau.new
  end

  # GET /tableaus/1/edit
  def edit
  end

  # POST /tableaus or /tableaus.json
  def create
    @tableau = Tableau.new(tableau_params)

    respond_to do |format|
      if @tableau.save
        format.html { redirect_to @tableau, notice: "Tableau was successfully created." }
        format.json { render :show, status: :created, location: @tableau }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tableau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tableaus/1 or /tableaus/1.json
  def update
    respond_to do |format|
      if @tableau.update(tableau_params)
        format.html { redirect_to @tableau, notice: "Tableau was successfully updated." }
        format.json { render :show, status: :ok, location: @tableau }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tableau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tableaus/1 or /tableaus/1.json
  def destroy
    @tableau.destroy
    respond_to do |format|
      format.html { redirect_to tableaus_url, notice: "Tableau was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tableau
      @tableau = Tableau.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tableau_params
      params.require(:tableau).permit(:title, :content, :image)
    end
end
