mytable = {}

mytable[1] = "Lua"

mytable[1] = nil

mytable = nil

mytable = {}

print( type(mytable) )

mytable[1] = "Lua"
mytable["name"]="siki"

newtable = mytable

print(newtable[1])
print(mytable[1])

newtable[1]="C#"

print(newtable[1])
print(mytable[1])

newtable[2]="Java"

print(mytable[2])


mytable = nil

--print(mytable.name)
print(newtable.name)

newtable = nil

--table.xxxxmethod

--Table连接
mytable = {"Lua","C#","Java","C++","C","abc","ABC"}

print( table.concat(mytable) )

print( table.concat(mytable,",") )

print( table.concat(mytable,",",2,4) )

--mytable[6]="PHP"
mytable[#mytable+1]="PHP"

print(mytable[#mytable])

table.insert( mytable,"Javascript" )

print(mytable[#mytable])

table.insert(mytable,2,"Boo")

print(mytable[2],mytable[3])

--mytable[2]=nil

--print(mytable[2])

table.remove(mytable,2)

print(mytable[2])


mytable={34,32,34,2,45,45,435,6,4576,76,33,23,24,2343,21,2,2,2,2,2,2,2,2}

--[[
print("排序前")

for k,v in ipairs(mytable) do
	print(k,v)
end
table.sort(mytable)
print("排序后")
for k,v in ipairs(mytable) do
	print(k,v)
end
--]]

--print("max:",table.maxn(mytable))

function get_max_number(tab)
	local mn = 0
	for k,v in pairs(tab) do
		if(mn<v) then
			mn=v
		end
	end
	return mn
end

print(  get_max_number(mytable) )
