require_relative '../../test_helper'

describe TodosController do

  let(:controller) do
    TodosController.new.tap do |c|
      c.stubs(:current_user).returns current_user
      c.stubs(:params).returns params
    end
  end

  let(:params) { {} }

  let(:current_user) do
    User.new(random_string)
  end

  it "should be an application controller" do
    controller.is_a?(ApplicationController).must_equal true
  end

  describe "create" do

    let(:todos_path) { Object.new }

    let(:title) { random_string }

    before do
      controller.stubs(:todos_path).returns todos_path
      controller.stubs :redirect_to

      params[:todo] = { title: title }

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

      it "should save the title" do
        controller.create
        Todo.first.title.must_equal title
      end

    end

  end

end
