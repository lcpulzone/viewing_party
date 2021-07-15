class FriendshipsController < ApplicationController
  def create
    new_friend = User.find_by(email: params[:search])

    if current_user.friends.include?(new_friend)
      flash[:notice] = 'Friend is already added'
    elsif current_user.email == params[:search]
      flash[:notice] = "You can't add yourself as a friend"
    else
      current_user.friends << new_friend
      flash[:success] = 'Friend added!'
    end
    redirect_to dashboard_index_path
  end
end
