class CategoriesController < ApplicationController
  before_action :set_rnaming, only: [:create,:destroy,:show, :new]
    def create
      @a = @rname.categories.create(params[:category].permit(:instance, :case, :character, :plurality, :side_note))

      redirect_to @rname
      # I dont know the story behind redirect_to, but Ill explore that later.
    end
###############################################
  #personal_side endevour
    def show
      @category = @rname.categories.find(params[:id])
      #why tf ar ethe values for both variables being switched over here?
    end
###############################################

    def destroy
      @rname.categories.find(params[:id]).destroy
      redirect_to @rname
    end

    def new
      @category = @rname.categories.new
    end

private

def set_rnaming
  @rname = Rnaming.find(params[:rnaming_id])
end


end
