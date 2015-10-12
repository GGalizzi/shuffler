class RelationshipsController < ApplicationController
  before_action :logged_check

  def create
    other_user = User.find(params[:relationship][:followed_id])
    current_user.follow other_user

    respond_to do |format|
      format.html { redirect_to other_user }
    end
  end

  def destroy
    other_user = Relationship.find(params[:id]).followed
    current_user.unfollow other_user

    respond_to do |format|
      format.html { redirect_to other_user }
    end
  end
end
