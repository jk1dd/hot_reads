class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.ten_hot
  end

  def create
    @link = Link.find_or_initialize_by(link_params)
    if @link.save && @link.update_count
      render json: @link, status: 201
      # head 201
    else
      head 400
    end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
