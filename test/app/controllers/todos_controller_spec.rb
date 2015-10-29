require_relative '../../test_helper'

describe TodosController do

  let(:controller) { TodosController.new }

  it "should be an application controller" do
    controller.is_a?(ApplicationController).must_equal true
  end

  describe "create" do

    let(:todos_path) { Object.new }

    before do
      controller.stubs(:todos_path).returns todos_path
    end

    it "should redirect to the todos path" do
      controller.expects(:redirect_to).with todos_path
      controller.create
    end

  end

end
