require 'rails_helper'

RSpec.describe "admins/matrices/index", type: :view do
  before(:each) do
    assign(:admins_matrices, [
      Admins::Matrix.create!(
        :name => ""
      ),
      Admins::Matrix.create!(
        :name => ""
      )
    ])
  end

  it "renders a list of admins/matrices" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
