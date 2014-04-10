module Jekyll
    module EachSlice
        def each_slice(data)
            puts data.each_slice(4).to_a.length
            data.each_slice(4).to_a
        end
    end
end

Liquid::Template.register_filter(Jekyll::EachSlice)
