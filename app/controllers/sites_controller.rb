class SitesController < ApplicationController
  def main
    #session = Facebooker::Session::Desktop.create("04e225bf6be5ded47cc805f930adfb1e", "ea099f735260781e1830f0ddbcbbfa1d")
    @comment = Comment.new
    @friends_comments = Comment.all(:joins => :user, :conditions => ["users.facebook_uid in(?)", @facebook_user.friends.map(&:uid)], :order => "comments.created_at DESC")
  end

  def fun_page
    puts "dsfdasfdas"
  end
end
