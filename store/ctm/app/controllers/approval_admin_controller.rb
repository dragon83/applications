class ApprovalAdminController < ApplicationController
  def dashboard
    debugger
    pending_moderation = Moderation.select([:moderatable_id, :moderatable_type]).uniq.take(10)
    @pending_moderation_users = []
    pending_moderation.each do |mod|
      @pending_moderation_users.append(mod.moderatable_type.constantize.find(mod.moderatable_id).user)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pending_moderation_users }
    end

  end

  def approve
    @approve_result = Moderation.find(params[:id]).accept
    respond_to do |format|
      format.html # approve.html.erb
      format.js
    end

  end

  def reject
    @reject_result = Moderation.find(params[:id]).discard
    respond_to do |format|
      format.html # approve.html.erb
      format.js
    end
  end

  def reviews
    @moderations = []
    user = User.find(params[:id])
    @moderations = @moderations + user.user_profile.moderations
    #@moderations = @moderations + user.user_text.moderations
    render "reviews" ,:layout => false
    return
  end
end
