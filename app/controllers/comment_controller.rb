class CommentController < ApplicationController
    def index
        
    end

    def create
        @album = Album.find(params[:album_id])
        @comment = @album.comments.create( params.permit(:body))
        redirect_to album_path(@album)
     end
    
end
