--table function

--����һ��������˵  ���� ����

--��


--[[
--1
person.eat = function ()
	print(person.name.."�ڳԷ�")
end


function person.eat()
	print(person.name.."�ڳԷ�")
end






--a = person

--person=nil

--person.eat(person)

--a.eat(a)


person.eat = function (self)
	print(self.name.."�ڳԷ�")
end




--person:eat()

a = person

-- ��ͨ�������õ�ʱ��ϵͳ���Զ����ݵ�ǰ��table��self��  ��ͨ��. �����÷�����ʱ��self�����Զ���ֵ�����Ǳ���ͨ����һ�����������ݵ�ǰ��table
a.eat(a)
a:eat()
--]]

Person ={ name="siki",age=99 }
function Person:eat()
	print(self.name.."�ڳԷ�")
	print(self.name.."��������"..self.age)
end

function Person:new(o)

	local t = o or {}

	--setmetatable( t, { __index=self })  --����һ�����Ե�ʱ�����t�в����ڣ���ô����__index ��ָ����table�в���
	setmetatable(t,self)
	self.__index=self

	return t
end
--[[
person1 = Person:new()

person2 = Person:new()


person1.name="sikiedu"
person1:eat()
print(person1.weight)
--]]

Student = Person:new()
Student.grade=1

stu1 = Student:new()

stu1:eat()

print(stu1.grade)

