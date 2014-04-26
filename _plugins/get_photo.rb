module Jekyll
    module GetPhoto
        def get_photo(name)

            speaker = @context.registers[:site].data['speakers'].find do |s|
                s["name"] == name
            end
            speaker["image_url"]
        end
    end
end

Liquid::Template.register_filter(Jekyll::GetPhoto)
