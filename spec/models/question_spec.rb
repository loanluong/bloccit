require 'rails_helper'

RSpec.describe Question, type: :model do
    let(:question) { Question.new(title: "New Question Title", body: "New Post Body", resolved: false) }
    
    it "should respond to body" do
        expect(question).to respond_to(:body)
    end
    
    it "should respond to title" do
        expect(question).to respond_to(:title)
    end
end
