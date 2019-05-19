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
        @produtos = Produto.where("lower(nome) like ?", "%#{params[:nome].downcase}%" )
        puts(@produtos)
        @produtos
    end
  
end
