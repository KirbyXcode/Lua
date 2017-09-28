--[[
str=type("Hello World")
print(str)

print( type("Hello World") )
print( type(10) )
print( type(1.1) )
print( type(print) )
print( type(type) )
print( type(nil) )  -- nil  "nil"
print( type(x) )


name = "Siki"
print(name)
name = nil
print(name)

tab1 = {key1="value1",key2="value2"}
print(tab1.key1)
tab1.key1 = nil
tab1=nil
print(tab1)

--boolean
print(type(true))
print(type(false))
print(type(nil))

if true then
	print(true)
end

if nil then
	print("nil被当做true处理")
else
	print("nil被当做false处理")
end


--number(数字)
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))


--]]

--string(字符串)
str1 = "this is string1"
str2 = 'this is string2'

html =
[[
<html>
<head></head>
<body>
    <a href="http://www.sikiedu.com/">SiKi学院</a>
</body>
</html>
]]
print(html)

-- ..  +
print("2".."6")
print("2"+"6")

print("2"+6)
print("2+6")
print("2e2"*"6")

print("234".."234234")


print(#html)
print(#str1)
print(#str2)
print(#"Siki学院")
