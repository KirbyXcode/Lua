--1,����
-- ''   ""   [[]]


--2,ת���ַ�
--[[
\n ����  \\ ����һ����б��	�\\" ����"	\'����'




a ='Hello\n\\World My name is \'Micheal\''
path = "C:\\Users\\souke\\Desktop\\LuaCode"
print(a)
print(path)




str ="My name is SiKi! name"
str2 =string.upper(str)
str3 =string.lower(str)

str4 =string.gsub(str,"i","123",5)

index = string.find(str,"name",5) --���������ҵ���λ�õ�����

str5=string.reverse(str)

num1 = 5
num2 = 10


print(str,str2,str3,str4,index)
print(str5)
print("�ӷ�����:"..num1.."+"..num2.."="..(num1+num2))
username = "w3er4wwrfwer"
password = "lkjlw3e4rl"
print("select * from user where username = '"..username.."' and password ='"..password.."'")

str6=string.format("�ӷ����㣺%d+%d=%d",num1,num2,(num1+num2))
print(str6)
str7 = string.format("select * from user where username='%s' and password ='%s'",username,password)
print(str7)

date = 2; month = 1; year = 2014
print(string.format("���ڸ�ʽ�� %02d/%02d/%03d", date, month, year))

--]]

s1 = string.char(97,98,99,100)
i1 =string.byte("ABCD",4)
i2 =string.byte("ABCD")
print(s1,i1,i2)

length1 = string.len("abc")
length2 = #"abc"
print(length1,length2)

s2=string.rep("abcd",4)
print(s2)

for word in string.gmatch("Hello Lua user", "%a+") do
	print(word)
end
