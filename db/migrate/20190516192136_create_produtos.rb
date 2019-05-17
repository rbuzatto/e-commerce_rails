class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :valor
      t.decimal :valor_promocao
      t.boolean :promocao
      t.string :imagem

      t.timestamps
    end
  end
end
