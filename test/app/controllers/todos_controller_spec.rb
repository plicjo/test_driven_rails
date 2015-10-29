require_relative '../../test_helper'

describe TodosController do

  let(:controller) do
    TodosController.new.tap do |c|
      c.stubs(:current_user).returns current_user
    end
  end

  let(:current_user) do
    User.new(random_string)
  end

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

      it "should be associated to the current user via email" do
        controller.create
        Todo.first.email.must_equal current_user.email
      end

    end

  end

end
