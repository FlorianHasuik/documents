require 'rails_helper'

RSpec.describe "documents/new", :type => :view do
  before(:each) do
    assign(:document, Document.new(
      :name => "MyString",
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do

      assert_select "input#document_name[name=?]", "document[name]"

      assert_select "input#document_title[name=?]", "document[title]"

      assert_select "input#document_description[name=?]", "document[description]"
    end
  end
end
