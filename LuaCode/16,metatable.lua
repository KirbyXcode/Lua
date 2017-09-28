--[[
mytable = {"Lua","Java","C#","C++"} --��ͨ��

mymetatable = {} --Ԫ��   Ԫ����չ����ͨ�����Ϊ


mytable =setmetatable(mytable,mymetatable)
print( mytable[3] )

print(getmetatable(mytable))
print(mymetatable)


tab = setmetatable({"Lua","Java","C#","C++"} , {__metatable="lock"} )
print(getmetatable(tab))
-- ʹʹ��__metatable���Ա���Ԫ����ֹ�û�����Ԫ���еĳ�Ա�����޸�Ԫ��

--]]

--mytable = {"Lua","Java","C#","C++"}

--[[
--1,__index�����ʵ�һ�������ڵ�������ʱ�� ������
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
print(mytable[9])  --__index����������ʵ������������ڵ�ʱ����ô��
--]]

--2,__newindex�����ǶԱ�����ݽ����޸ĵ�ʱ�򣬵������޸ĵ���һ���µ�������ʱ��Ż�������  �����Ǹ�������µļ�ֵ�Ե�ʱ��������
--mytable = {"Lua","Java","C#","C++"}

--[[
mymetatable = {
__newindex = function(tab,key,value)
	print("����Ҫ�޸ĵ�keyΪ��"..key.." �����keyֵ�޸�Ϊ��"..value)
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


mytable = {"Lua","Java","C#","C++"} --��ͨ��

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
} --Ԫ��   Ԫ����չ����ͨ�����Ϊ

mytable =setmetatable(mytable,mymetatable)

newtable = {"PHP","Python"}

v=mytable+newtable
v2=newtable + mytable


print(v)

for k,v in pairs(v2) do
	print(k,v)
end
 --]]


mytable = {"Lua","Java","C#","C++","ccccc"} --��ͨ��

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
} --Ԫ��   Ԫ����չ����ͨ�����Ϊ


mytable =setmetatable(mytable,mymetatable)

v = mytable(123,34,453)
print(v)

print(mytable)
