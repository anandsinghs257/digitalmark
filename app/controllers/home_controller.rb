class HomeController < ApplicationController

  skip_before_action :verify_authenticity_token

	def home
		@user = User.new
		session[:referrer] = request.referrer
	end

	def create_contact
		@user = User.new(user_params)
		respond_to do |format|
			if @user.save
				format.html { redirect_to request.referrer, notice: 'Your request submitted successfully.' }
				format.json { render :show, status: :created, location: @user }
			else
				format.html { render :new }
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end
	private
	  # Never trust parameters from the scary internet, only allow the white list through.
	  def user_params
	    params.require(:user).permit(:full_name, :contact_no, :email, :message)
	  end
end
