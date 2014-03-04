class Accepted < ActiveRecord::Base
  attr_accessible :friend_id, :friend_request_id, :user_id
  belongs_to :user
  belongs_to :friend_request
  belongs_to :friend ,:class_name => User ,:foreign_key => :friend_id
  after_create :create_friend_accept , :unless => :pair_exists?



  def create_friend_accept
      Accepted.create(:user_id => self.friend_id,
                   :friend_id => self.user_id ,
                   :friend_request_id => self.friend_request_id
      )

  end

  def pair_exists?
    Accepted.where(:user_id => self.friend_id,
                 :friend_id => self.user_id ,
                 :friend_request_id => self.friend_request_id
    ).size > 0
  end

end
