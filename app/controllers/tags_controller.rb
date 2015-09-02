class TagsController < ApplicationController
  def show
    @tag = tag.find(params[:id])
  end
end
