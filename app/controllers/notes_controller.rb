class NotesController < ApplicationController
   def index
    @note = Note.all
   end
   
   def show
    @note = Note.find(params[:id])
   end
   
    def new
        # @note = Note.new
    end

    def edit
        @note = Note.find(params[:id])
    end

    def create
        _note = Note.new(note_params)
        _note.is_archived = false
        @note = _note

        @note.save
        redirect_to @note
    end

    def update
        @note = Note.find(params[:id])

        if @note.update(note_params)
            redirect_to dashboard_index_path
        else
            render 'edit'
        end
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy

        redirect_to dashboard_index_path
    end

    private
    def note_params
        params.require(:note).permit(:title, :color)
    end
end
