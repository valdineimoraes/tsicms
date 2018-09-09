require 'rails_helper'

RSpec.describe "admins/matrices/new", type: :view do
  before(:each) do
    assign(:admins_matrix, Admins::Matrix.new(
      :name => ""
    ))
  end

  it "renders new admins_matrix form" do
    render

    assert_select "form[action=?][method=?]", admins_matrices_path, "post" do

      assert_select "input[name=?]", "admins_matrix[name]"
    end
  end
end
