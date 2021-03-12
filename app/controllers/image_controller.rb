class ImageController < ApplicationController
def index
    @album = current_user.albums
 
end
def destroy
    image = ActiveStorage::Blob.find_signed(params[:id])
    image.purge
    redirect_to root_path
end

end