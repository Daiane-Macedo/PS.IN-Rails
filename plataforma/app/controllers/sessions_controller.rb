class SessionsController < ApplicationController
  
  before_action :nao_logado, :only => [:new, :create]
  
  def new
  end
  
  def create
    user = User.find_by(nome: params[:session][:nome].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
    render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to users_path #redireciona para página de usuários
  end
  
  private #métodos sempre são public ou private
  
    def nao_logado
      if logged_in?
        flash.now[:danger] = "Você já está logado"
        redirect_to users_path
      end
    end
end
