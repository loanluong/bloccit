require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.new(title: "New Question Title", body: "New Post Body", resolved: false) }
   let(:answer) { Answer.new(question: question, body: "Answer Body") }
 
   
     it "should respond to" do
      expect(answer).to respond_to(:body)
  end

end
