require 'spec_helper'

describe Publisher do
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive }
  it { should have_many(:books)}
end