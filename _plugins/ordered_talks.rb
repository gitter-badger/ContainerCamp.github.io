module OrderedTalks
  class Generator < Jekyll::Generator
    def generate(site)
      site.data['ordered_talks'] = site.collections["talks"].docs.sort_by do |t|
          t.data["from"].sub(':', '').to_i
      end
    end
  end
end
