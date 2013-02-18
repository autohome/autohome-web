require 'spec_helper'

describe "Nodes" do
    it "redirects to login when not logged in" do
      get nodes_path
      response.status.should be(302)
    end

    it "works when logged in" do
      get new_user_session_path
      fill_in 'Email', :with => 'root@example.com'
      fill_in 'Password', :with => 'password'
      click_button 'Sign in'

      get nodes_path
      response.status.should be(200)
    end
end
