stringify = pandoc.utils.stringify

function Image(img)
      if img.classes:find('figure',1) then
        local fn = img.src
        local f = io.open("figures/" .. fn, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        --print(fn)
        local src=pandoc.utils.stringify(doc.meta.image_url) or "src has not been set"
        src = string.sub(src,9)
        local caption=pandoc.utils.stringify(doc.meta.caption) or "caption has not been set"
        return pandoc.Image(caption,src)
      end
end

