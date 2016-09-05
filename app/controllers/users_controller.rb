require 'digest'
require 'securerandom'

class UsersController < ApplicationController

  # POST /users
  # 로그인한다.
  def login
    # 비밀번호는 클라이언트에서 암호화되어야 함
    @user = User.find_by('email' => params[:email], 'password' => params[:password])

    if @user
      @user.access_token = SecureRandom.hex
      if @user.save
        render :json => {
          :access_token => @user.access_token
        }
      else
        print 'Stub!'
      end
    else
      print 'Stub!'
    end
  end
end
