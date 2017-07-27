class LinksController < ApplicationController
  def index
    @links = Link.ten_hot
  end

end
