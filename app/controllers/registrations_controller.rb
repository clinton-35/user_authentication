class RegistrationsController < ApplicationController
    def create
      email = params['user'] ? params['user']['email'] : params['email']
      password = params['user'] ? params['user']['password'] : params['password']
  
      user = User.create!(
        email: email,
        password: password
      )
  
      if user
        session[:user_id] = user.id
        render json: {
          message:'Registration successful',
          
        }
      else 
        render json: {
          message:'Registration failed'
        }
      end
    end
  end
  