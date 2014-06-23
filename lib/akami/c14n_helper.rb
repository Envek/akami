module Akami
  module C14nHelper
    def canonicalize(xml, algorithm = Nokogiri::XML::XML_C14N_EXCLUSIVE_1_0, inclusive_namespaces = nil, with_comments = nil)
      return unless xml
      # +nil+ should be passed as +with_comments+ to +canonicalize+ instead of +false+ for Nokogiri < 1.6.2
      # see https://github.com/sparklemotion/nokogiri/pull/992
      with_comments = with_comments ? true : nil
      xml.canonicalize algorithm, inclusive_namespaces, with_comments
    end
  end
end
