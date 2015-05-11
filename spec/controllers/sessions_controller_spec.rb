require 'spec_helper'

describe SessionsController do
  let(:user) {Fabricate(:user)}
  
  describe "GET #new" do
    context "unauthenticated users" do
      it "renders the new template" do
        get :new
        expect(response).to render_template :new
      end
    end
    context "authenticated users" do
     
    end
  end
  
  describe "POST #create" do
    context "successful sign in" do
      before do
        post :create, { email: user.email, password: user.password }
      end
      it "redirects to root path" do
        expect(response).to redirect_to root_path
      end

      it "sets the flash message" do
        expect(flash[:success]).to eq('Sign in successful.')
      end
    end
    
    context "unsuccessful sign in" do
      
    end   
    
  end
  
end