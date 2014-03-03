require "fetch"

%w{
  version
  product
  product_fetch
}.each do |file|
  require "fetch/products/#{file}"
end