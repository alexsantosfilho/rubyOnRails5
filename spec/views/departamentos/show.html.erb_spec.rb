require 'rails_helper'

RSpec.describe "departamentos/show", type: :view do
  before(:each) do
    @departamento = assign(:departamento, Departamento.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
