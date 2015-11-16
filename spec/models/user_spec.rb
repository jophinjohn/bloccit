require 'rails_helper'
 
 describe User do
 
   include TestFactories
 
   describe "#favorited(post)" do
    let(:post) { associated_post }
    let(:user) { authenticated_user}
    let(:favorited_post) { user.favorited(post)}

     it "returns `nil` if the user has not favorited the post" do
      expect(favorited_post).to eq(nil)
     end
 
     it "returns the appropriate favorite if it exists" do
       favorite = user.favorites.create(post: post)
       expect(favorited_post).to eq(favorite)
     end
   end
 end