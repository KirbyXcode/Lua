--[[
[local] function functionName(arg1,arg2,arg3.....argn)
	functionBody
	[return value1,value2.....valuen]
end
--]]

local function max(num1,num2)
	if(num1>num2)then
		return num1
	else
		return num2
	end
end

print( max(1,10) )


--����������Ϊ���ݸ�ֵ   ������Ϊ��������

temp = max

print(temp(40,3))

myprint = function (param)
	print("������ҵĴ�ӡ����"..param)
end

myprint(100)

function add(num1,num2,printFun)
	local res = num1+num2
	printFun(res)
end

add(40,50,myprint)


--lua����ĺ������Է��ض��ֵ

print(10,20,80)

function average(...)
	--print(arg[1])
	local arg = {...}
	res = 0
	for k,v in pairs(arg) do
		res = res+v
		--print(res.."for")
	end
	-- #arg ȡ�ò����ĸ���  	#"hello"
	print(res/#arg)
end

average()
average(10)
average(1,30)
average(3,8,90)
average(5,67,7,8,3)
