require 'rails_helper'

RSpec.describe "atividades/new", type: :view do
  before(:each) do
    assign(:atividade, Atividade.new(
      :atividade => "MyString",
      :situacao => "MyString",
      :projeto => "MyString",
      :projetoid => 1,
      :atuacao => "MyString",
      :custo => "9.99",
      :cargahoras => "9.99",
      :responsavelid => 1,
      :responsavelnome => "MyString",
      :decricao => "MyText"
    ))
  end

  it "renders new atividade form" do
    render

    assert_select "form[action=?][method=?]", atividades_path, "post" do

      assert_select "input#atividade_atividade[name=?]", "atividade[atividade]"

      assert_select "input#atividade_situacao[name=?]", "atividade[situacao]"

      assert_select "input#atividade_projeto[name=?]", "atividade[projeto]"

      assert_select "input#atividade_projetoid[name=?]", "atividade[projetoid]"

      assert_select "input#atividade_atuacao[name=?]", "atividade[atuacao]"

      assert_select "input#atividade_custo[name=?]", "atividade[custo]"

      assert_select "input#atividade_cargahoras[name=?]", "atividade[cargahoras]"

      assert_select "input#atividade_responsavelid[name=?]", "atividade[responsavelid]"

      assert_select "input#atividade_responsavelnome[name=?]", "atividade[responsavelnome]"

      assert_select "textarea#atividade_decricao[name=?]", "atividade[decricao]"
    end
  end
end
