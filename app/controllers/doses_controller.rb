class DosesController < ApplicationController
    def new
      @dose = Dose.new
    end

    def create
        @dose = Dose.new(dose_params)
        @dose.save
        @cocktail = Cocktail.find(params[:cocktail_id])
        redirect_to cocktail_path
    end














    private

    def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
    end
end
