term.setTextColor(1)
term.setBackgroundColor(32768)
term.setCursorPos(1,1)
term.setCursorBlink(true)
term.write("  0123456789ABCDEF")
for y = 0,15 do
	term.setCursorPos(1,y+3)
	term.write(string.format("%01X",y))
	for x = 0,15 do
		term.setCursorPos(x+3,y+3)
		term.write(string.char(y*16+x))
	end
end
while true do
	coroutine.yield()
end
