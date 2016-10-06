require 'spec_helper'
require 'fortnox/api/repositories/contexts/environment'
require 'fortnox/api/repositories/order'
require 'fortnox/api/repositories/examples/all'
require 'fortnox/api/repositories/examples/find'
require 'fortnox/api/repositories/examples/only'
require 'fortnox/api/repositories/examples/save'
require 'fortnox/api/repositories/examples/save_with_nested_model'
require 'fortnox/api/repositories/examples/search'

describe Fortnox::API::Repository::Order, order: :defined, integration: true do
  include_context 'environment'

  required_hash = { customer_number: '1' }
  include_examples '.save', :comments, required_hash
  include_examples '.save with nested model',
                   required_hash,
                   :order_rows,
                   { order_row: { price: 10, price_excluding_vat: 7 } }

  # It is not possible to delete Orders. Therefore, expected nr of Orders
  # when running .all will continue to increase.
  include_examples '.all', 8

  include_examples '.find'

  include_examples '.search', :customername, 'A customer'

  include_examples '.only', :cancelled, 2
end