
function Image(img)
    if img.classes:includes 'figure' then
       return pandoc.Image
    end
end


