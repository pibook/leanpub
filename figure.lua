
function Image(img)
      stringify = pandoc.utils.stringify
      if img.classes:find('figure',1) then
        local fn = img.src
        local f = io.open("figures/" .. fn, 'r')
        local doc = pandoc.read(f:read('*a'))
        f:close()
        --print(fn)
        local figid = string.sub(fn,1,string.len(fn)-3)
        local src = stringify(doc.meta.image_url) or "src has not been set"
        src = string.sub(src,2)
        local caption = stringify(doc.meta.caption) or "caption has not been set"
        return pandoc.Image(caption,src,nil,"fig:" .. figid)
      end
end

