class FriendRequest < ActiveRecord::Base
  attr_accessible :accepted, :declined, :from_user_id, :message_id, :reply_message_id, :to_user_id, :user_id ,:message
  belongs_to :message
  validates :from_user_id, :uniqueness => { :scope => [:to_user_id,:accepted],:message => "you have already sent a friend's request" } ,:on => :create
  after_initialize :build_associated_msg

  def build_associated_msg
     build_message
  end

  def from_user
    User.find(from_user_id)
  end

  def to_user
    User.find(to_user_id)
  end

  #create friend request
  def self.create_friend_request(to_user,from_user,msg_content)
    f = FriendRequest.new(:from_user_id => current_user.id,:to_user_id => to_user.id)
    f.message.msg_content =  msg_content
    f
  end


  def cancel_friend_request

  end

  def accept_friend_request(params)

    #add inbox messsages for both the users with message type with message id from the above message
   Inbox.transaction do    
     i = Inbox.new(  :user_id => current_user.id ,
                     :from_user_id => current_user.id,
                     :message_type_id => ACCEPTREQ,
                     :to_user_id => self.from_user_id).build_message(params[:msg_content])
     i.save!
     Inbox.create( :user_id => f_req.from_user_id ,
                   :from_user_id => current_user.id,
                   :to_user_id => self.from_user_id,
                   :message_type_id => ACCEPTREQ,
                   :message_id => i.message.id 
     )

     #add to accepted members to both the users 
     Accepted.create( :user_id => current_user.id, 
                      :friend_request_id => self.id, 
                      :friend_id => self.from_user_id 
     )
   
     Accepted.create( :user_id => self.from_user_id, 
                      :friend_request_id => self.id, 
                      :friend_id => current_user.id
     )

     #change the status of friends_request from accepted=nil to accepted = 1
     update_attributes( :accepted => 1 )
   end
 end

 def decline_friend_request
  FriendRequest.transaction do
     i = Inbox.new(
         :user_id => current_user.id ,
	       :from_user_id => current_user.id,
         :message_type_id => DECLINEREQ,
		     :to_user_id => self.from_user_id
     ).build_message(
         :msg_content => params[:msg_content]
     )
     i.save
    remove_accepteds
   #delete self 
   self.delete
  end    
 end


  def remove_accepteds
    #delete from accepted list
    accepteds.each do |accp|
      accp.delete!
    end
  end

end
