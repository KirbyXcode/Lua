module = {}

module.var = "siki"

module.func1 = function ()
	print("�����Module����ĺ���")
end
--[[
function module.func1()
	print("�����Module����ĺ���")
end
--]]

local function func2()
	print("����Ǿֲ�����fun2")  --�൱��һ��˽�к��� private
end

function module.func3()
	func2()
	print("�����ȫ�ֺ���func3")
end

return module