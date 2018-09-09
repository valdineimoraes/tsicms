require 'rails_helper'

RSpec.describe "admins/matrices/show", type: :view do
  before(:each) do
    @admins_matrix = assign(:admins_matrix, Admins::Matrix.create!(
      :name => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
