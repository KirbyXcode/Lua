--[[
mytable = {"Lua","Java","C#","C++"} --普通表

mymetatable = {} --元表   元表扩展了普通表的行为


mytable =setmetatable(mytable,mymetatable)
print( mytable[3] )

print(getmetatable(mytable))
print(mymetatable)


tab = setmetatable({"Lua","Java","C#","C++"} , {__metatable="lock"} )
print(getmetatable(tab))
-- 使使用__metatable可以保护元表，禁止用户访问元表中的成员或者修改元表。

--]]

--mytable = {"Lua","Java","C#","C++"}

--[[
--1,__index当访问到一个不存在的索引的时候 起作用
mymetatable = {
__index = function (tab,key)
	if(key>=10) then
		return "Javascript"
	end
end
 }

newtable = {}
newtable[7]="Javascript"
newtable[8]="PHP"
newtable[9]="C"
mymetatable = {
__index = newtable
 }


mytable =setmetatable(mytable,mymetatable)


print(mytable)
print(mytable[1])
print(mytable[9])  --__index用来处理访问到的索引不存在的时候，怎么办
--]]

--2,__newindex当我们对表的数据进行修改的时候，当我们修改的是一个新的索引的时候才会起作用  当我们给表添加新的键值对的时候，起作用
--mytable = {"Lua","Java","C#","C++"}

--[[
mymetatable = {
__newindex = function(tab,key,value)
	print("我们要修改的key为："..key.." 把这个key值修改为："..value)
	--mytable[key]=value
	rawset(tab,key,value)
end
 }

newtable = {}
mymetatable = {
__newindex = newtable
}

mytable =setmetatable(mytable,mymetatable)

mytable[1]="C#"
mytable[5]="Lua"

print(mytable[1])
print(mytable[5])
print(newtable[5])


mytable = {"Lua","Java","C#","C++"} --普通表

mymetatable = {
__add = function(tab,newtab)
	local mi = 0
	for k,v in pairs(tab)do
		if(k>mi) then
			mi = k
		end
	end

	for k,v in pairs(newtab) do
		mi=mi+1
		table.insert(tab,mi,v)
	end
	return tab
end
} --元表   元表扩展了普通表的行为

mytable =setmetatable(mytable,mymetatable)

newtable = {"PHP","Python"}

v=mytable+newtable
v2=newtable + mytable


print(v)

for k,v in pairs(v2) do
	print(k,v)
end
 --]]


mytable = {"Lua","Java","C#","C++","ccccc"} --普通表

mymetatable = {
__add = function(tab,newtab)
	local mi = 0
	for k,v in pairs(tab)do
		if(k>mi) then
			mi = k
		end
	end

	for k,v in pairs(newtab) do
		mi=mi+1
		table.insert(tab,mi,v)
	end
	return tab
end,
__call = function (tab,arg1,arg2,arg3)
	print(arg1,arg2,arg3)
	return "siki"
end,
__tostring = function (mytable)
	local str = ""
	for k,v in pairs(mytable) do
		str = str..v..","
	end
	return str
end
} --元表   元表扩展了普通表的行为


mytable =setmetatable(mytable,mymetatable)

v = mytable(123,34,453)
print(v)

print(mytable)
