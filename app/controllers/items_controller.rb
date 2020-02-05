class ItemsController < ApplicationController
    def create
        
        @note = Note.find(params[:note_id])
        @item = @note.items.create(item_params)

        
        redirect_to edit_note_path(@note)
    end

    def update
        puts "############################################################################################################################"

        @note = Note.find(params[:note_id])
        @item = @note.items.update(item_params)

        
        redirect_to dashboard_path(@note)
    end

    def destroy
        @note = Note.find(params[:note_id])
        @item = @note.items.find(params[:id])
        item.destroy
        redirect_to dashboard_path
    end

    private 
    def item_params
        params.require(:item).permit(:is_checked, :memo)
    end
end
