require "fortnox/api/mappers/base"

module Fortnox
  module API
    module Mapper
      class Article < Fortnox::API::Mapper::Base

        KEY_MAP = {
          ean: 'EAN',
          eu_account: 'EUAccount',
          eu_vat_account: 'EUVATAccount',
          vat: 'VAT'
        }.freeze
        JSON_ENTITY_WRAPPER = 'Article'.freeze
        JSON_COLLECTION_WRAPPER = 'Articles'.freeze

      end

      Registry.register( Article.canonical_name_sym, Article )
    end
  end
end
