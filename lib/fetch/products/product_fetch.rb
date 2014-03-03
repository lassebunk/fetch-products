module Fetch
  class ProductFetch < Fetch::Base
    fetches_with :price_fetch
  end
end