function Image(img)
    if img.classes:find('contribution2019097',1) then
      local f = io.open("contribution2019097/" .. img.src, 'r')
      local doc = pandoc.read(f:read('*a'))
      f:close()
      local contribution = pandoc.utils.stringify(doc.meta.contribution) or "Epigraph has not been set"
      local student = pandoc.utils.stringify(doc.meta.student) or "Student has not been set"
      local id = pandoc.utils.stringify(doc.meta.id) or "Student ID has not been set"
      local credentials = " Student: " .. student .. " (" .. id .. ")"
      local text = "\n\n _" .. contribution2019097 .. "_ \n\n"
      return pandoc.RawInline('markdown',text .. credentials)
    end
end
