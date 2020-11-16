class QuestionsController < ApplicationController
    def ask
        # @test = "hello"
    end

    def answer
        @question = params[:question]
        if @question.downcase == "i am going to work right now!"
            @response = "Great!"
          elsif @question.end_with?("?")
            @response = "Silly question, get dressed and go to work!"
          else
            @response = "I don't care, get dressed and go to work!"
        end
    end
end