class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to root_path
    else
      render :new
    end
  end

  def home
    @members = Member.all
  end

  private

  def member_params
    params.require(:member).permit(:name,:job,:department,:description,:picture)
  end
end
