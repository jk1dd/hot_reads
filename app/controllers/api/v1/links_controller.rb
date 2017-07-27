class Api::V1::LinksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @links = Link.all
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      head 201
    else
      head 400
    end
  end

  private

  def link_params
    params.require(:link).permit(:url)
  end
end
