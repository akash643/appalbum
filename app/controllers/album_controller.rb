class AlbumController < ApplicationController
    def index

        @album = current_user.albums
       end
     
       def show
        @album =Album.find(params[:id])
        @album.images.attached?
        @comenter=@album.comments


       end
     
       def new
         @album = Album.new
       end
     
       def create
         @album = current_user.albums.new(album_params)
         if @album.save
           redirect_to root_path
         else
           render('new')
         end
       end
     
       def edit   
         @album = Album.find(params[:id])  
       end
       def update 
         @album = Album.find(params[:id])
         if @album.update(album_params)
           redirect_to root_path
         else
           render('edit')
         end
       end 
        
       def delete
     
       end
       def destroy 
         
           @album = Album.find(params[:id])
           @album.destroy
           redirect_to root_path
        
           
       end
       private    
       def album_params
         params.require(:album).permit(:album_name, :album_description, images: [])
       end
end
