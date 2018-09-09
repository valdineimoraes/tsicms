require 'rails_helper'

RSpec.describe "admins/matrices/edit", type: :view do
  before(:each) do
    @admins_matrix = assign(:admins_matrix, Admins::Matrix.create!(
      :name => ""
    ))
  end

  it "renders the edit admins_matrix form" do
    render

    assert_select "form[action=?][method=?]", admins_matrix_path(@admins_matrix), "post" do

      assert_select "input[name=?]", "admins_matrix[name]"
    end
  end
end
