require 'spec_helper'

describe "templates/edit" do
  before(:each) do
    @template = assign(:template, stub_model(Template,
      :name => "MyString"
    ))
  end

  it "renders the edit template form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => templates_path(@template), :method => "post" do
      assert_select "input#template_name", :name => "template[name]"
    end
  end
end
