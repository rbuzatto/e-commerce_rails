class ProdutosController < ApplicationController
    def index
        @produtos = Produto.all
    end

    def new
    end
  
    def create
    end

    def show
    end
  
    def search
        if params[:nome].strip! == ""
            redirect_to request.referrer
        end
        @produtos = Produto.where("lower(nome) like ?", "%#{params[:nome].downcase}%" )
    end
  
end
