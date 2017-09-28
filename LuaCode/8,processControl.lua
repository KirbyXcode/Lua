

--[[

if (布尔表达式) then
	为true的时候要执行的代码
end


if(布尔表达式)then
	为true的时候要执行的代码
else
	为false的时候要执行的代码
end


if (布尔表达式) then
	//1
elseif (布尔表达式) then
	//2
else
	//3
end
--]]


if(0) then
	print(0)
end

a  = 10
if(a>10)then
	print("a大于10")
end

if a<=10 then
	print("a小于等于10")
end

if(b) then
	print("b不为空")
else
	print("b为空")
end

a = 100

if(a<=50)then
	print("a<=50")
elseif (a<=100)then
	print("a<=100")
elseif(a<=150)then
	print("a<=150")
else
	print("上面三种情况都不满足")
end

