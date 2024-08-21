class SheetsController < ApplicationController
  before_action :set_sheet, only: %i[ show edit update destroy ]

  # GET /sheets or /sheets.json
  def index
    @sheets = current_user.sheets
  end

  # GET /sheets/1 or /sheets/1.json
  def show
  end

  # GET /sheets/new
  def new
    @sheet = Sheet.new
  end

  # GET /sheets/1/edit
  def edit
  end

  # POST /sheets or /sheets.json
  def create
    @sheet = Sheet.new(sheet_params)

    respond_to do |format|
      if @sheet.save
        format.html { redirect_to sheet_url(@sheet), notice: "Sheet was successfully created." }
        format.json { render :show, status: :created, location: @sheet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sheets/1 or /sheets/1.json
  def update
    respond_to do |format|
      if @sheet.update(sheet_params)
        format.html { redirect_to sheet_url(@sheet), notice: "Sheet was successfully updated." }
        format.json { render :show, status: :ok, location: @sheet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1 or /sheets/1.json
  def destroy
    @sheet.destroy!

    respond_to do |format|
      format.html { redirect_to sheets_url, notice: "Sheet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sheet
      @sheet = Sheet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sheet_params
      params.require(:sheet).permit(:name, :hp, :mana, :action_points, :extra_action_points, :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :armor_class, :initiative, :speed, :level, :experience)
    end
end
