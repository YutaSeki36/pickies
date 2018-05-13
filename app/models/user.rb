class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]

  has_many :books, through: :book_users
  has_many :book_users
  has_many :tips

  acts_as_followable # フォロワー機能
  acts_as_follower   # フォロー機能

  def self.from_omniauth(auth)
     find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
       user.provider = auth["provider"]
       user.uid = auth["uid"]
       user.username = auth["info"]["nickname"]
     end
   end

   def self.new_with_session(params, session)
     if session["devise.user_attributes"]
       new(session["devise.user_attributes"]) do |user|
         user.attributes = params
       end
     else
       super
     end
   end

   def self.search(search) #self.でクラスメソッドとしている
    if search && search != "" # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      User.where(['username LIKE ?', "%#{search}%"])
    else
      nil
    end
  end

end
