def paragraph(string)

	return puts"<p>#{string}</p>"

end


def image(source, width = 100, height = 100)
	puts "<img src='#{source}' width='#{width}' height='#{height}'/>"
	
end



paragraph("I am a sample sentence, but not a paragraph")

image("chicken wings",200,300)