using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LuaInterface;

namespace CSharpe与Lua的交互
{
    class Program
    {
        static void Main(string[] args)
        {
            Lua lua = new Lua();

            //ExecuteLuaInCLR(lua);
            //ExecuteLuaInCSharpe(lua);
            //InjectMethodToLua(lua);
            //StaticInjectMethodToLua(lua);

            InvokeClassInLua(lua);

            Console.ReadKey();

        }

        #region C#对lua的调用

        //在CLR中执行lua代码
        static void ExecuteLuaInCLR(Lua lua)
        {
            lua["num"] = 366;
            Console.WriteLine(lua["num"]);

            lua["str"] = "my world 我的世界";
            Console.WriteLine(lua["str"]);

            lua.NewTable("tab");
            Console.WriteLine(lua["tab"]);
        }

        //在C#中执行Lua脚本文件,或者脚本字符串
        static void ExecuteLuaInCSharpe(Lua lua)
        {
            lua.DoString("num = 233");
            lua.DoString("str = 'my world'");

            object[] obj = lua.DoString("return num, str");

            foreach (object o in obj)
            {
                Console.WriteLine(o);
            }

            lua.DoFile("script.lua");
        }

        //把一个类中的普通方法注册进Lua
        static void InjectMethodToLua(Lua lua)
        {
            Program p = new Program();

            lua.RegisterFunction("LuaMethod", p, p.GetType().GetMethod("CLRMethod"));

            lua.DoString("LuaMethod()");
        }
        //注意必须为public
        public void CLRMethod()
        {
            Console.WriteLine("把C#中的普通方法注册进Lua中");
        }

        //把一个类中的静态方法注册进Lua
        static void StaticInjectMethodToLua(Lua lua)
        {
            lua.RegisterFunction("StaticLuaMethod", null, typeof(Program).GetMethod("StaticCLRMethod"));

            lua.DoString("StaticLuaMethod()");
        }
        //注意必须为public
        public static void StaticCLRMethod()
        {
            Console.WriteLine("把C#中的静态方法注册进Lua中");
        }

        #endregion

        #region lua对C#的调用

        //在lua中使用C#的类
        static void InvokeClassInLua(Lua lua)
        {
            lua.DoFile("MyLua.lua");
        }


        //在Lua中访问C#中的属性和方法
        public string name = "Lua";

        public void InvokeMethodInLua()
        {
            Console.WriteLine("lua成功执行C#中InvokeMethodInLua函数");
        }

        //在Lua中访问C#中的属性和方法-特殊情况-带有out和ref关键字
        public void TestOut(string name, out int count)
        {
            Console.WriteLine(name);
            count = name.Length;
        }

        public void TestRef(string name, ref int count)
        {
            Console.WriteLine(name);
            Console.WriteLine(count);
            count = name.Length;
        }

        #endregion
    }
}
