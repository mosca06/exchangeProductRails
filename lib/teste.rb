# require 'set'
# require_relative '../config/environment'

# # Caminho para os models
# path = Rails.root.join("app", "models").to_s

# # Armazena as relações detectadas
# relationships = Set.new
# intermediary_models = Set.new

# # Itera pelos arquivos dos models
# Dir.foreach(path) do |file|
#   next if file == '.' || file == '..' # Ignora diretórios especiais

#   # Verifica se é um arquivo Ruby
#   full_path = File.join(path, file)
#   next unless File.file?(full_path) && file.end_with?('.rb')

#   # Analisa o conteúdo do arquivo
#   File.foreach(full_path) do |line|
#     if line.include?('has_many :through')
#       # Detecta a relação 'has_many :through' com o modelo intermediário
#       match = line.match(/has_many\s+:(\w+),\s+through:\s+":(\w+)"/)
#       if match
#         # O modelo intermediário
#         intermediary_model = match[2].singularize
#         intermediary_models.add(intermediary_model)
        
#         # Adiciona a relação entre os modelos e o intermediário
#         relationships.add("#{match[1].singularize.capitalize} -> #{intermediary_model.capitalize}")
#         relationships.add("#{intermediary_model.capitalize} -> #{match[1].singularize.capitalize}")
#       end
#     elsif line.include?('has_many')
#       match = line.match(/has_many\s+:(\w+)/)
#       if match
#         # Evita as relações diretas entre Product e Supplier
#         unless match[1] == 'products_suppliers' || match[1] == 'suppliers_products'
#           relationships.add("#{File.basename(file, '.rb').capitalize} -> #{match[1].singularize.capitalize}")
#         end
#       end
#     elsif line.include?('belongs_to')
#       match = line.match(/belongs_to\s+:(\w+)/)
#       if match
#         relationships.add("#{match[1].singularize.capitalize} -> #{File.basename(file, '.rb').capitalize}")
#       end
#     end
#   end
# end

# # Gerar o código Graphviz
# puts "digraph models {"
# relationships.each { |relation| puts "  #{relation};" }

# # Adicionar as relações intermediárias para o Graphviz
# intermediary_models.each do |model|
#   # Relacionamento do intermediário com outros modelos
#   puts "  #{model.capitalize} -> #{model.singularize.capitalize};"
# end

# puts "}"


class Teste
#   User.all.map{ |user| user.draft_orders.map { |draft_order| draft_order.draft_items.map{ |draft_item|  draft_item.item.products_supplier.product.name}}}
#   Product.select("products.name AS pname, suppliers.name AS supname").joins(products_suppliers: { items: {draft_items: { draft_order: :user } } } ).joins(products_suppliers: :supplier).as_json
# nome , preço nome_fornecedor
end