class LivrosController < ApplicationController
    def index
      @livros = Livro.all
    end
    
    def show
        @livro = Livro.find(params[:id])
    end

    def new
        @livro = Livro.new
      end
    
      def create
        @livro = Livro.new(livro_params)
        if @livro.save
          redirect_to @livro
        else
          render 'new'
        end
      end
    
      private
    
      def livro_params
        params.require(:livro).permit(:titulo, :autor, :nota, :descricao)
    end

    def edit
        @livro = Livro.find(params[:id])
      end
    
      def update
        @livro = Livro.find(params[:id])
        if @livro.update(livro_params)
          redirect_to @livro
        else
          render 'edit'
        end
    end

    def destroy
        @livro = Livro.find(params[:id])
        @livro.destroy
        redirect_to livros_path
    end

  end