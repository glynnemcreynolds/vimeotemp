class SharesController < ApplicationController
  def show
    @share = Share.find_by uid: params[:uid]
    if @share.expired?
      @share.destroy!
      flash[:danger] = 'Share has expired and has been deleted'
      redirect_to expired_path
    else
      render 'show'
    end
  end

  def new
    @share = Share.new
  end

  def create
    @share = Share.new(share_params)
    if @share.save
      flash[:success] = 'New share successfully created!'
      redirect_to share_path(@share.uid)
    else
      render 'new'
    end
  end

  private # or protected

  def share_params
    params.require(:share).permit(
      :video_code, :duration
    )
  end
end
