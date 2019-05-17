class AddFieldnameToProdutos < ActiveRecord::Migration[6.0]
  def change
    add_column :produtos, :categoria, :string
  end
end
