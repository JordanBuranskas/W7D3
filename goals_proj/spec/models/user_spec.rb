require 'rails_helper'

#remember to update as associations are added 

RSpec.describe User, type: :model do

    it {should validate_presence_of(:username)}
    it { should validate_presence_of(:password_digest)}	
    it { should validate_presence_of(:session_token)}	
    it { should validate_length_of(:password).is_at_least(6)}

    subject(:user) {User.create(username: "Dan", session_token: "", password: "123456")}

    it {should validate_uniqueness_of(:username)}
    it {should validate_uniqueness_of(:session_token)}

    


  


end
