module Fetch
  class Product < ActiveRecord::Base
    include Fetchable

    validates_uniqueness_of :key, scope: :scope

    serialize :data
  end
end