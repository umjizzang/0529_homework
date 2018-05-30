class CommentController < ApplicationController
    
    def create
        @comment = Comment.new
        @comment.content = params[:comment_content]
        @comment.note_id = params[:note_id]
        @comment.save
        
        redirect_to "/note/show/#{params[:note_id]}"
    end
    
end
