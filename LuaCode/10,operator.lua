--  + - * / % ^���� -
--[[
a = -3
b = 4

print(-a)
--]]


--��ϵ�����  ==   ~= > <  >= <=
--[[
a = 25
b = 30

if(a==b)then
	print("a==b")
else
	print("a~=b")
end

if(a~=b)then
	print("ab�����")
else
	print("ab���")
end

if(a<b)then
	print("aС��b")
else
	print("a��С��b")
end

--]]

--�߼������  and   or   not
--a and b a ,b ��Ϊtrue����Ϊtrue
--a or b  a,b��ֻҪ��һ��Ϊtrue�����Ϊtrue
-- not a

a = true
b = true

print( 30>20 and 10>30)

print( false or false  )

print (not true)


print("Hello".."World")
print(#"Hello")

tab = {32,233,323,21,312,3,213,23}
tab=nil
tab = {key3="123",key4="value4"}
tab.key1 = 34
tab.key2 = "sdfsder"

tab[1]=234
tab[2]=234
tab[4]=2334
print(#tab)
