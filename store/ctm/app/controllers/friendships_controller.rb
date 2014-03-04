class FriendshipsController < ApplicationController

  def index
    @user = current_user
  end

  def new_friend_request
    @friend = User.find(params[:friend_id])
    @msg_drafts  = current_user.get_msg_drafts
    @is_allowed_self_text = current_user.is_allowed_self_text?
    @msg_type = "new_friend_request"
    render :layout => false
  end

  #create friend request
  def create_friend_request
    debugger
    to_user = User.find(params[:friend_id])
    from_user = current_user
    msg_content = params[:msg_content]

    @modal = params[:modal_name]
    @modal_name = "pravin first from parameter"
    @f_req = FriendRequest.create_friend_request(to_user,from_user,msg_content)
    @f_req.save
  end

  def accepted_friendships_list
   @users = current_user.friends
  end

  #new_interests_list
  def new_friendships_list
    @users = current_user.friends
  end

  #new accept friend request
  def new_accept_friends_request
    @f_req = FriendRequest.find(params[:friend_request_id])
    @f_req.new_accept_friend_request(params)
    render :layout => false
  end

  #accept friend request
  def accept_friends_request
    f_req = FriendRequest.find(params[:friend_request_id])
    f_req.accept_friend_request(params)
  end

  #new decline friend request
  def new_decline_friends_request
    @f_req = FriendRequest.find(params[:friend_request_id])
    @msg_drafts  = current_user.get_cancel_msg_drafts
    @is_allowed_self_text = current_user.is_allowed_self_text?
    @url =   "#{cancel_path}?friend_request_id=#{@f_req.id}"
    @type = 'Cancel'
    @msg_type = CANCELREQ
    #@f_req.new_decline_friend_request(params)
    render  :layout => false
  end

  #decline friend request
  def decline_friends_request
    debugger
    @f_req = FriendRequest.find(params[:friend_request_id])
    @f_req.decline_friend_request(params)
    #add decline message to messages
    #add inbox messsages for both the users with message type with message id from the above message
    #remove from accepted members from both the users
    #delete from friends_request
  end

  def new_send_message
    to_user = User.find(params[:friend_id])
    from_user = current_user
    msg_content = params[:msg_content]

    @f_req = FriendRequest.find(params[:friend_request_id])
    @msg_drafts  = current_user.get_cancel_msg_drafts
    @is_allowed_self_text = current_user.is_allowed_self_text?
    @msg_type = CANCELREQ
    #@f_req.new_decline_friend_request(params)
    render  :layout => false

  end
  def send_message
    to_user = User.find(params[:friend_id])
    from_user = current_user
    msg_content = params[:msg_content]
  end

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    puts ">>>>>>>>>>>>>>>>>>>>>>>"
    puts @friendship
    puts "<<<<<<<<<<<<<<<<<<<<<<<"
    if @friendship.save
      flash[:notice] = "Inrerest Shown."
      redirect_to root_url
    else
      flash[:error] = "Error while creating an Interest."
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed from accepted members."
    redirect_to current_user
  end


end
