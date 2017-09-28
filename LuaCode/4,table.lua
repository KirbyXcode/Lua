tab1 = {} --空表   {}构造表达式

tab2={key1=100,key2="value2"} --初始化一个表

print(tab1)
print(tab1.key)

print(tab2.key1)
print(tab2["key1"])

tab3={"apple","pear","orange","grape"}

print(tab3[2])
print(tab3["2"])

for key,val in pairs(tab3) do
	print(key..":"..val)
end

for key,val in pairs(tab2) do
	print(key..":"..val)
end

--table不会固定长度大小
tab1.key1 = "www.sikiedu.com"
tab1["key2"]="siki"
tab1[10]=1000

print(tab1["key1"])
print(tab1.key1)
print(tab1["key2"])
print(tab1.key2)
print(tab1[10])

tab2.key1 = "www.sikiedu.com"

for key,val in pairs(tab2) do
	print(key..":"..val)
end

tab2.key1 = nil


for key,val in pairs(tab2) do
	print(key..":"..val)
end

tab3[2]=nil


for key,val in pairs(tab3) do
	print(key..":"..val)
end

tab3[100]="芒果"

for key,val in pairs(tab3) do
	print(key..":"..val)
end

tab3["key3"]="value3"

for key,val in pairs(tab3) do
	print(key..":"..val)
end

tab3=nil --删除整个表，释放内存
