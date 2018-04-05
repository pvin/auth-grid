class OffersController < InheritedResources::Base

  load_and_authorize_resource

  private

    def offer_params
      params.require(:offer).permit(:name, :value)
    end
end

