require 'rails_helper'

RSpec.describe Advertisement, type: :model do
 let(:advertisement) { Advertisement.create!(id: 1, title: "New Advertisement Title", body: "New Advertisement Body", price: 4)}
 
 describe "attributes" do 
    it "should respond to title" do
      expect(advertisement).to respond_to(:title)
    end
    
    it "should respond to body" do
      expect(advertisement).to respond_to(:body)
    end
    
    it "should respond to price" do
      expect(advertisement).to respond_to(:price)
    end
  end

end
