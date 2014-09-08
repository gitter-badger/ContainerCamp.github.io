module Jekyll
    module SplitPlus
        def split_plus(text)
            return text unless (not text.nil? and text.include? ' + ')
            return text.split(' + ').join(' <span class="plus">+</span> ')
        end
    end
end

Liquid::Template.register_filter(Jekyll::SplitPlus)
