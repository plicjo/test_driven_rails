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
      controller.stubs :redirect_to

      Todo.delete_all
    end

    describe "creating the todo" do

      it "should create a Todo" do
        controller.create
        Todo.count.must_equal 1
      end

    end

  end

end
