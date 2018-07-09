class TwiclosController < ApplicationController
    before_action :set_twiclo, only: [:edit, :update, :destroy]
    before_action :session_twiclo, only: [:edit, :update, :destroy, :create, :new]
    
  def index
      @twiclos = Twiclo.all
  end
  
  def new
      if params[:back]
        @twiclo = Twiclo.new(twiclo_params)
      else
        @twiclo = Twiclo.new
      end
  end
  
  def create
    @twiclo = Twiclo.new(twiclo_params)
    if @twiclo.save
      redirect_to twiclos_path, notice: "つぶやきました！"
    else
      render 'new'
    end
  end

  def edit

  end
 
  def update

       if @twiclo.update(twiclo_params)
         redirect_to twiclos_path, notice: "編集しました！"
       else
       render 'edit'
       end
  end
 
  def destroy
      @twiclo.destroy
      redirect_to twiclos_path, notice: "削除しました！"
  end
 
  def confirm
    @twiclo = Twiclo.new(twiclo_params)
    render :new if @twiclo.invalid?
  end
 
  private
  def twiclo_params
    params.require(:twiclo).permit(:content)
  end
  
  def set_twiclo
    @twiclo = Twiclo.find(params[:id])
  end
  
  def session_twiclo
    if logged_in?
    else
      render new_session_path  
    end
  end
  
end
