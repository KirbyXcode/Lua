--[[

function test()
	//code1
	//
	// code2
	//code3

	//return
end


test()

///after code


///

// go on

//����һ������  Ҳ���� ��ͣ����




--����Эͬ����
co=coroutine.create(
	function (a,b)
		print(a+b)
	end
)


coroutine.resume(co,20,30)


--1,����Эͬ����coroutine.create
--2,����Эͬ����coroutine.resume
--3,��ͣЭͬ����coroutine.yield
--4,�������� coroutine.resume (����Ҫ���ݲ���)




co=coroutine.wrap(
	function (a,b)
		print(a+b)
	end
)

co(20,30)
--]]


--����Эͬ����
co=coroutine.create(
	function (a,b)
		print(a+b)
		print(coroutine.status(co))
		print(a+b)
		print(coroutine.status(co))
		print( coroutine.running() )
		coroutine.yield(a*b,a/b)
		print(a-b)

		return a%b,a/b+1
	end
)
print( coroutine.running() )
print(coroutine.status(co))
res1,res2,res3 = coroutine.resume(co,10,40)
print(res1,res2,res3)

print(coroutine.status(co))
print("I'm here!")


res1,res2,res3 = coroutine.resume(co)
print(res1,res2,res3)

print(coroutine.status(co))

--��һ��yield�Ĳ�����Ϊ��һ��resume�ķ���ֵ
--��һ��resume�Ĳ�����ΪЭ�̵Ĳ����� �ڶ���resume�Ĳ�����Ϊ��һ��yield�ķ���ֵ

