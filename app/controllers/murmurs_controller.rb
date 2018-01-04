class MurmursController < ApplicationController
  before_action :set_murmur, only: [:edit, :update, :destroy]
  
  def index
    @murmurs = Murmur.all
  end

  def new
    if params[:back]
      @murmur = Murmur.new(murmur_params)
    else
      @murmur = Murmur.new
    end
  end
  
  def create
    @murmur = Murmur.new(murmur_params)
    if @murmur.save
      redirect_to murmurs_path, notice: "つぶやきを投稿しました！"
    else
      render 'new'
    end
  end
  
  def update
    if @murmur.update(murmur_params)
      redirect_to murmurs_path, notice: "つぶやきを編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @murmur.destroy
    redirect_to murmurs_path, notice:"つぶやきを削除しました！"
  end
  
  def confirm
    @murmur = Murmur.new(murmur_params)
    render :new if @murmur.invalid?
  end

  def new
    if params[:back]
      @murmur = Murmur.new(murmur_params)
    else
      @murmur = Murmur.new
    end
  end
  
  private
  
  def murmur_params
    params.require(:murmur).permit(:content)
  end

  def set_murmur
    @murmur = Murmur.find(params[:id])
  end
end