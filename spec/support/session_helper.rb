def sign_up
	visit  new_user_registration_path

	fill_in :user_email, :with => 'user123@example.com'
	fill_in :user_username, :with => 'mike123'
	fill_in :user_password, :with => 'securepass'
	fill_in :user_password_confirmation, :with => 'securepass'

	click_button 'Sign up'
end