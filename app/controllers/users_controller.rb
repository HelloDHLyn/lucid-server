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
        head 500 # Internal Server Error
      end
    else
      head 422 # Unprocessable Entity
    end
  end

  # POST /users/email
  # 계정의 존재 여부를 확인한다.
  def email_validation
    @user = User.find_by('email' => params[:email])

    if @user
      render :json => {
        :email => params[:email],
        :exist => true
      }
    else
      render :json => {
        :email => params[:email],
        :exist => false
      }
    end
  end
end
