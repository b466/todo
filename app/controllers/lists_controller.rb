class ListsController < ApplicationController
  def new
    @list=List.new
  end

  def
    @list=List.new(list_params)
  end

  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title).merge(user: current_user)
  end
end
