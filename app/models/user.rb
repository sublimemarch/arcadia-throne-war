class User < ActiveRecord::Base
      has_many :characters

      validates :email, :name, :password_hash, :user_type, presence: true
      validates :email, :name, uniqueness: { case_sensitive: false }

      before_save { |user| user.email = email.downcase}

      def password
      	  @password ||= BCrypt::Password.new(self.password_hash)
      end

      def password=(plaintext)
      	  @password = BCrypt::Password.create(plaintext)
	        self.password_hash = @password
      end

      def self.authenticate(user)
      	  @_user = User.find_by(email: user[:email].downcase)
	        @_user if @_user && @_user.password == user[:password]
      end

#      def create(attributes = {})
#        @email = attributes[:email]
#        @name = attributes[:name]
#        password(attributes[:password])
#        @user_type = attributes[:type] != nil ? attributes[:type] : 0
#      end

end
