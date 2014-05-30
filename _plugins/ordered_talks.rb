require 'pry'

module OrderedTalks
  class Generator < Jekyll::Generator
    def generate(site)
      site.data['ordered_talks'] = site.posts.sort_by do |t|
          t.data["from"].sub(':', '').to_i
      end
    end
  end
end
