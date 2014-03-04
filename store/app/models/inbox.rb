class Inbox < ActiveRecord::Base
  attr_accessible :from_user, :message_id, :message_type_id, :to_user, :user_id
  has_one :message
  belongs_to :user
  belongs_to :message_type

  after_create :create_pair_inbox , :unless => pair_exists?

  def create_pair_inbox
    Inbox.create( :user_id => self.to_user_id ,
                  :from_user_id => self.from_user_id ,
                  :message_type_id => message_type_id ,
                  :to_user_id => self.to_user_id ,
                  :message_id => message_id
    )
  end

  def pair_exists?
    Inbox.where( :user_id => self.to_user_id ,
                  :from_user_id => self.from_user_id ,
                  :message_type_id => message_type_id ,
                  :to_user_id => self.to_user_id ,
                  :message_id => message_id
    ).size > 0
  end

end
