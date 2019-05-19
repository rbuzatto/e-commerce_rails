class RemoveCategoriaFromProdutos < ActiveRecord::Migration[6.0]
  def change

    remove_column :produtos, :categoria, :string
  end
end
