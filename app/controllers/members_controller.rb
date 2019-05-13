class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path
    else
      render :new
    end
  end

  def home
  end

  private

  def member_params
    params.require(:member).permit(:name,:job,:department,:description,:picture)
  end
end
