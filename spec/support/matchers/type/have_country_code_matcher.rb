module Matchers
  module Type
    def have_country_code( attribute, valid_hash = {} )
      HaveCountryCodeMatcher.new( attribute, valid_hash )
    end

    class HaveCountryCodeMatcher < EnumMatcher
      def initialize( attribute, valid_hash )
        super( attribute, valid_hash, 'CountryCode', 'CountryCodes', nonsense_value: 'XX'.freeze )
      end
    end
  end
end
