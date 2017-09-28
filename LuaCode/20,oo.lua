--table function

--对于一个对象来说  属性 方法

--人


--[[
--1
person.eat = function ()
	print(person.name.."在吃饭")
end


function person.eat()
	print(person.name.."在吃饭")
end






--a = person

--person=nil

--person.eat(person)

--a.eat(a)


person.eat = function (self)
	print(self.name.."在吃饭")
end




--person:eat()

a = person

-- 当通过：调用的时候，系统会自动传递当前的table给self，  当通过. 来调用方法的时候，self不会自动赋值，我们必须通过第一个参数来传递当前的table
a.eat(a)
a:eat()
--]]

Person ={ name="siki",age=99 }
function Person:eat()
	print(self.name.."在吃饭")
	print(self.name.."的年龄是"..self.age)
end

function Person:new(o)

	local t = o or {}

	--setmetatable( t, { __index=self })  --调用一个属性的时候，如果t中不存在，那么会在__index 所指定的table中查找
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

