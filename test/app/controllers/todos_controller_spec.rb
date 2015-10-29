require_relative '../../test_helper'

describe TodosController do

  let(:controller) { TodosController.new }

  it "should be an application controller" do
    controller.is_a?(ApplicationController).must_equal true
  end

end
