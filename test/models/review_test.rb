require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  
  setup do
    @note = mangas(:one) 
  end

  test 'should not save empty review' do
    review = Review.new #creates a new review, 
    review.save #saves it,  
    refute review.valid? #then checks if its valid
  end

  test ' should save valid review' do
    review = Review.new #creates new task
    review.title = 'My Review' # gives it a required title
    review.note = @manga # gives it a requred manga 
    review.save # saves values
    assert review.valid? # then checks if its valid
  end

end