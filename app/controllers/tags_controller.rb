# frozen_string_literal: true

class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    tag = Tag.find(params[:id])
    tag_name = tag.name
    tag.destroy

    flash.notice = "Tag '#{tag_name}' Deleted!"

    redirect_to action: "index"
  end
end
