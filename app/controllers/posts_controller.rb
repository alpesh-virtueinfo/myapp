class PostsController < ApplicationController
    def new
        @post = Post.new
    end
    
    def index
         @posts = Post.all
    end

    def create
        @post = Post.new(params[:post].permit(:title, :text))

        if @post.save
            redirect_to @post
        else
            render 'new'
        end

        #@post = Post.new(post_params)
        #if(@post.valid?)
        #  @post.save
        #  redirect_to posts_path
        #else
        #  redirect_to new_post_path
        #end
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def edit
        @post = Post.find(params[:id])
    end
    
    def update
        respond_to do |format|
            @post = Post.find(params[:id])

            if @post.update(params[:post].permit(:title, :text))
                format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }
                #redirect_to posts_path
            else
                render 'edit'
            end
        end
    end
    
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        redirect_to posts_path
    end
     
    #private
    #def post_params
    #    params.require(:post).permit(:title, :text)
    #end   
end
