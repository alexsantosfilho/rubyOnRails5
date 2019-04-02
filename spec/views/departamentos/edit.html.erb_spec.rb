require 'rails_helper'

RSpec.describe "departamentos/edit", type: :view do
  before(:each) do
    @departamento = assign(:departamento, Departamento.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit departamento form" do
    render

    assert_select "form[action=?][method=?]", departamento_path(@departamento), "post" do

      assert_select "input[name=?]", "departamento[nome]"
    end
  end
end
