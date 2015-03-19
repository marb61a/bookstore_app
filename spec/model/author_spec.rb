require 'spec_helper'

describe Author do
  it "requires a first name" do
    author = fabricate.build(:author, first_name: nil)
    
    expect(author).not_to be_valid
    expect(author.errors[:first_name].any?).to be_true
  end
  it "requires a last name"
  describe "#full_name" do
    it "returns the full name of the author"
  end  
end