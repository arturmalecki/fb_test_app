class CommentsController < ApplicationController
  def create
    #puts params[:fb_sig_captcha_grade]
    @comment = @user.comments.build(params[:comment])
    @comment.save!
    redirect_to(root_path(:success_notice => "Dodano komentarz..."))
  rescue ActiveRecord::RecordInvalid
    redirect_to(root_path(:error_notice => "Błąd...."))
  end
end
