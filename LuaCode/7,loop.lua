--[[


1，while循环
2，for循环
3，repeat unitl     （do while）



while循环

while (condition) do
	statements
end


a = 1
while (a<=20) do
	if (a%2==1) then
		print(a)
	end
	a=a+1
end

for循环

1，数值for循环

for var=start,end,step do
	循环体
end
	这里var会从start变化到end，每次变化一step进行

2，泛型for循环

for i=1,10,2 do
	print(i)
end

for i=20,1,-3 do
	print(i)
end

tab1 = {key1="value1",key2="value2"}

for k,v in pairs(tab1) do
	print(k,v)
end

tab2 = {"apple","橡胶","西瓜","猕猴桃"}

for k,v in pairs(tab2) do
	print(k,v)
end

repeat until  (do while)
repeat
	循环体
until(condition)
a = 1
repeat
	print(a)
	a=a+1
until(a>10)


--]]

for i=1,10 do
	for j=1,i do
		print(i)
	end
end

for i=1,10 do
	j=1
	while j<=i do
		print(i)
		j=j+1
	end
end

