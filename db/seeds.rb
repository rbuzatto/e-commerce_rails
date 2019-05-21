# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_list = [
  "Jogos",
  "Móveis",
  "Vestuário",
  "Cozinha" 
]

category_list.each do |name|
  Category.create( name: name )
end

produto_list = [
  ["Spider-Man PS4", 110.99, nil, false, "https://images-submarino.b2w.io/produtos/01/00/item/133780/7/133780784_1GG.jpg", 1], 
  ["Red Dead Redemption PS4", 129.99, 109.99, true, "https://images-submarino.b2w.io/produtos/01/00/offers/01/00/item/133806/7/133806745_1GG.jpg", 1], 
  ["Mortal Kombat 11 XBOX ONE", 167.99, nil, false, "https://images-submarino.b2w.io/produtos/01/00/oferta/134163/7/134163796_1GG.jpg", 1], 
  ["Forza Motorsport7 XBOX ONE", 167.99, 137.99, true, "https://images-submarino.b2w.io/produtos/01/00/item/132532/8/132532885_1GG.jpg", 1], 
  ["Cama Box Conjugado", 1099.99, 999.99, true, "https://images-submarino.b2w.io/produtos/01/00/item/120025/4/120025481_1GG.png", 2], 
  ["Bermuda Oakley", 158.99, nil, false, "https://images-submarino.b2w.io/produtos/01/00/sku/31510/9/31510905_1GG.jpg", 3], 
  ["Casaco Feminino", 229.99, 78.99, true, "https://images-submarino.b2w.io/produtos/01/00/oferta/56010/7/56010725_1GG.jpg", 3], 
  ["Adega de Vinhos", 629.99, 609.99, true, "https://images-submarino.b2w.io/produtos/01/00/offers/01/00/item/112997/0/112997095_1GG.png", 4], 
  ["Geladeira/Refrigerador", 2289.99, nil, false, "https://images-submarino.b2w.io/produtos/01/00/item/133605/7/133605724_1GG.jpg", 4], 
  ["Fogão de Piso 5 bocas", 888.99, 788.99, true, "https://images-submarino.b2w.io/produtos/01/00/item/133883/8/133883821_1GG.jpg", 4], 
  ["Microondas 30 Litros", 439.99, 375.99, true, "https://images-submarino.b2w.io/produtos/01/00/item/117294/0/117294081_1GG.jpg", 4], 
]

produto_list.each do |nome, valor, valor_promocao, promocao, imagem, category_id|
  Produto.create( nome: nome, valor: valor, valor_promocao: valor_promocao, promocao: promocao, imagem: imagem, category_id: category_id )
end
