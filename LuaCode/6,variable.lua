--[[

a = 5 --全局

print(type(a))

a = "Hello"

print(type(a))

--局部变量的销毁是在所在语句块结束
local b = 10

print(b)


function test()
	c = 5
	local d = 6
end

test()

print(c,d)


do
	local a = 10
	b =11
	print(a,b)
end

print(a,b)

--]]

--a = 10

a,b = 10,20 -- a = 10 b = 20

a,b,c = 10,20,"Hello"

print(a,b,c)

a,b = b,a -- a = b  b = a

print(a,b)

a,b = 10,20,30

print(a,b)

a,b,c = 20,30

print(a,b,c)

function test()
	return 40,50
end

a,b = test()
print(a,b)
