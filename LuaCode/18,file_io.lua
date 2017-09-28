--io.xxxx

--[[



file = io.open("data1.txt","w")

io.output(file)

io.write("www.sikiedu.com\n")

io.write("www.sikiedu.com")

io.write("www.sikiedu.com")

io.write("www.sikiedu.com")

io.close(file)



file = io.open("data1.txt","r")

io.input(file)

print(io.read(10)) --读取一行\

print(io.read(10)) --读取一行\

print(io.read(10)) --读取一行\

print(io.read(10)) --读取一行\

print(io.read(10)) --读取一行\

io.close(file)



file=io.open("data1.txt","r")
print(file:read())
print(file:read())

file:close()


file=io.open("data1.txt","a")

file:write("www.sikiedu.com")

file:close()
--]]




