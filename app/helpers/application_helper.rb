module ApplicationHelper
	def show_login_link
		if @auth
			link_to @auth.email, logout_path, :method => :delete, :confirm => :true
		else
			link_to 'Login', login_path
		end

	end

end
