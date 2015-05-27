require 'spec_helper'

describe CartItemsController do
  let(:book) { Fabricate(:book) }
  let(:cart) { Fabricate(:cart) }

  before { set_current_cart(cart) }
  
  describe "POST #create" do
    it "saves the new cart_item object" do
      post :create, cart_item: Fabricate.attributes_for(:cart_item,
                                          book: book, cart: cart), book_id: book.id
      expect(CartItem.count).to eq(1)
    end
    it "redirects to the cart show action" do
      post :create, cart_item: Fabricate.attributes_for(:cart_item,
                                          book: book, cart: cart), book_id: book.id
      expect(response).to redirect_to root_path
    end   
  end
end