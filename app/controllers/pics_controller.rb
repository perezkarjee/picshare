class PicsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :set_pic, only: [:show, :edit, :update, :destroy, :my_pics]

  respond_to :html

  def index

    @pics = Pic.order("created_at DESC").paginate(:page => params[:page], :per_page => 20)
    respond_with(@pics)

  end

  def show
    respond_with(@pic)
  end

   def new
    @pic = current_user.pics.new
    respond_with(@pic)
  end

  def create
    @pic = current_user.pics.new(pic_params)
    @pic.save
    respond_with(@pic)
  end

  def update
    @pic.update(pic_params)
    respond_with(@pic)
  end

   def destroy
    @pic = current_user.pics.find(params[:id])
    @pic.destroy

    respond_to do |format|
      format.html { redirect_to pics_url }
      format.json { head :no_content }
    end
  end

  private
    def set_pic
      @pic = Pic.find(params[:id])
    end

    def pic_params
      params.require(:pic).permit(:image ,:title, :description)
    end
end
