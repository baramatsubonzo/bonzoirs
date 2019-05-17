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
      redirect_to members_path, notice: "「#{@member.name}」を登録しました"
    else
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to root_path , notice: "「#{@member.name}」を更新しました"
    else
      render :edit
    end
  end

  def home
  end

  private

  def member_params
    params.require(:member).permit(:name,:job,:department,:description,:picture)
  end
end
