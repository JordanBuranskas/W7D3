require 'rails_helper'

#remember to update as associations are added 

RSpec.describe User, type: :model do

    it {should validate_presence_of(:username)}
    it { should validate_presence_of(:password_digest)}	
    it { should validate_presence_of(:session_token)}	
    it { should validate_length_of(:password).is_at_least(6)}

    # describe ‘uniqueness’ do
      before :each do 
        user = User.create(username: "Dan")
      end
        it {should_validate_uniqueness_of(:username)}
        it {should_validate_uniqueness_of(:session_token)}
    # end
    


  


end
