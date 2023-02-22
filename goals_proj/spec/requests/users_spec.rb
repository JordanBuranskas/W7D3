require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "it opens up the User index page" do
      get users_url #this is the rails magic where the url is automatically attached to the model name based on rails routes action template 
      expect(response).to have_http_status(200)
      expect(response.body).to include("Users Index!") #make sure to include these exact words in our view so we dont accidentally flag an error
      
    end
  end

  describe "GET /users/id" do
    it "it opens up the user's show page" do
      get users_url #this is the rails magic where the url is automatically attached to the model name based on rails routes action template 
      expect(response).to have_http_status(200) #what does 300 do
      # expect(response.body).to include("Users Index!") #make sure to include these exact words in our view so we dont accidentally flag an error
      
    end
  end


  


end
