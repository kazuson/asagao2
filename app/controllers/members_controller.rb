class MembersController < ApplicationController
  #会員一覧
  def index
    @members = Member.order("number")
  end

  def show
    @member = Member.find(params[:id])
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

  def new
    @member = Member.new(birthday: Date.new(1980,1,1))
  end

  def edit
    @member = Member.find(params[:id])
  end

end
