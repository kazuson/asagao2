class MembersController < ApplicationController
  #会員一覧
  def index
    @members = Member.order("number")
  end

  def show
  end

  def edit
  end

  def create
  end

  def updated
  end

  def destroy
  end

  def search
    @members = Member.search(params[:q])
    render "index"
  end


end
