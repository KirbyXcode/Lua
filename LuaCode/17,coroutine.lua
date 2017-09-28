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

//挂起一个函数  也叫做 暂停函数




--定义协同函数
co=coroutine.create(
	function (a,b)
		print(a+b)
	end
)


coroutine.resume(co,20,30)


--1,定义协同函数coroutine.create
--2,启动协同函数coroutine.resume
--3,暂停协同函数coroutine.yield
--4,继续运行 coroutine.resume (不需要传递参数)




co=coroutine.wrap(
	function (a,b)
		print(a+b)
	end
)

co(20,30)
--]]


--定义协同函数
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

--第一个yield的参数作为第一个resume的返回值
--第一个resume的参数作为协程的参数， 第二个resume的参数作为第一个yield的返回值

