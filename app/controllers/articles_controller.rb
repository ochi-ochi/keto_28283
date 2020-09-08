class ArticlesController < ApplicationController
    before_action :move_to_index, except: [:index]

    def index
    end

    def new
         @article = Article.new
    end

    def create
        @article = Article.create(article_params)
        if @article.save
            redirect_to action: :index
        else
            redirect_to action: :new
        end
    end

    def show
    end

    private
    def move_to_index
        unless user_signed_in?
          redirect_to action: :index
        end
    end

    def article_params
        params.require(:article).permit(:name,:protein,:fat,:carbo,:introduction,:image).merge(user_id: current_user.id)
    end

end
