class SharesController < ApplicationController
  def show
    @share = Share.find(params[:id])
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new(share_params)
    if @share.save
      flash[:success] = 'New share successfully created!'
      redirect_to @share
    else
      render 'new'
    end
  end

  private # or protected

  def share_params
    params.require(:share).permit(
      :video_code
    )
  end
end
