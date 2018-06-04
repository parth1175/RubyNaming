class CategoriesController < ApplicationController
  before_action :set_rnaming, only: [:create, :index]
    def create
      @rname.categories.create(params[:category].permit(:instance))

      redirect_to @rname
      # I dont know the story behind redirect_to, but Ill explore that later.
    end

    def index
      @category = @rname.find(params[:id])
    end

private

def set_rnaming
  @rname = Rnaming.find(params[:rnaming_id])
end


end
