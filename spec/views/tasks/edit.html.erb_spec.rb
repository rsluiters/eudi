require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "MyString",
      :description => "MyText",
      :answer => "MyString",
      :points => 1,
      :category_id => 1
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path(@task), :method => "post" do
      assert_select "input#task_name", :name => "task[name]"
      assert_select "textarea#task_description", :name => "task[description]"
      assert_select "input#task_answer", :name => "task[answer]"
      assert_select "input#task_points", :name => "task[points]"
      assert_select "input#task_category_id", :name => "task[category_id]"
    end
  end
end
