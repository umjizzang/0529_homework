class NoteController < ApplicationController
    
    def index
        @note = Note.all
        
    end
    
    def create
        
    end
    
    def new
        @note = Note.new
        @note.title = params[:note_title]
        @note.content = params[:note_content]
        @comment.note_id = params[:note_id]
        @note.save
        
        redirect_to '/note/index'
    end
        
    def show
        @note = Note.find(params[:note_id])
        @comment = @note.comments
    end
    
end
