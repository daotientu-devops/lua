-- Tables are the only data structure
--[[
Syntax:
- sample table initialization
mytable = {}
-- simple table value assignment
mytable[1] = "Lua"
-- removing reference
mytable = nil
--]]
local mytable = {}
print("Type of mytable is ".. type(mytable))
mytable[1]="Lua"
mytable["wow"]="Tutorial"
print("mytable Element at index 1 is ".. mytable[1])
print("mytable Element at index wow is ".. mytable["wow"])
-- alternatetable and mytable refers to same table
alternatetable = mytable
print("alternatetable Element at index 1 is ".. alternatetable[1])
print("alternatetable Element at index wow is ".. alternatetable["wow"])
alternatetable["wow"]="I changed it"
print("alternatetable Element at index wow is ".. alternatetable["wow"])
-- mytable is still accessible
print("mytable Element at index wow is ".. mytable["wow"])
-- Table Concatenation
fruits = {"banana","orange","apple"}
-- returns concatenated string of table
print("Concatenated string "..table.concat(fruits))
-- concatenate with a character
print("Concatenated string "..table.concat(fruits, ", "))
-- concatenate fruits based on index
print("Concatenated string "..table.concat(fruits, ", ", 2, 3))
-- insert a fruit at the end
table.insert(fruits, "mango")
print("Fruit at index 4 is ".. fruits[4])
-- insert fruit at end 2
table.insert(fruits, 2, "grapes")
print("Fruit at index 2 is ".. fruits[2])
print("The maximum elements in table is " ..table.maxn(fruits))
print("The last element is "..fruits[5])
-- Sorting tables
for k,v in ipairs(fruits)
do
print(k,v)
end
table.sort(fruits)
print("sorted table")
for k,v in ipairs(fruits)
do
print(k,v)
end
-- Modules
mymathmodule = require("mymath")
mymathmodule.add(10,20)
mymathmodule.sub(30,20)
mymathmodule.mul(10,20)
mymathmodule.div(30,20)
-----------------------------------------------
print("test")
--[[ Tokens in Lua --]]
io.write("Hello world, from ", _VERSION, "!\n")
--[[ Variable declaration in lua --]]
local a, b
-- Initialization
a = 10
b = 30
print("Value of a: ", a)
print("Value of b: ", b)
-- Swaping of Variable
b, a = a, b
print("Value of a: ", a)
print("Value of b: ", b)
f = 70.0 / 3.0
print("Value of f", f)
g, l = 10, 40
print("Value of g: ", g)
print("Value of l: ", l)
-- Data type
-- Type Function
print(type("What is my type"))
t=10
print(type(5.8*t))
print(type(true))
print(type(print))
print(type(nil))
print(type(type(ABC)))
-- Operators
--- Arithmetic Operators
--- Relational Operators
--- Logical Operators
--- Misc Operators
-- Loops
-- Decision Making
-- Defining a function
--[[
optional_function_scope function function_name(argument1, argument2, argument3...., argumentn)
function_body
return result_params_comma_separated
end
--]]
function max(num1, num2)
if (num1>num2) then
result = num1;
else
result = num2;
end
return result;
end
-- Calling a function
print("The maximum of the two numbers is ", max(10, 4))
print("The maximum of the two numbers is ", max(5, 6))
-- Assigning and passing functions
myprint = function(param)
	print("This is my print function - ##", param, "##")
end
function add(num1, num2, functionPrint)
result = num1 + num2
functionPrint(result)
end
myprint(10)
add(2, 5, myprint)
-- Function with variable argument
function average(...)
result = 0
local arg = {...}
for i,v in ipairs(arg) do
result = result + v
end
return result/#arg
end
print("The average is", average(10,5,3,4,5,6))
--[[
String can be Initialized with three forms which includes
+ Characters between single quotes
+ Characters between double quotes
--]]
string1 = "Lua"
print("\"String 1 is\"", string1)
string2 = 'Tutorial'
print("String 2 is", string2)
string3 = [["Lua Tutorial"]]
print("String 3 is", string3)
-- Case Manipulation
string1 = "Lua"
print(string.upper(string1))
print(string.lower(string1))
-- Replacing a substring
string = "Lua Tutorial"
newstring = string.gsub(string, "Tutorial", "Language")
print("The new string is "..newstring)
-- Finding and Reversing
string = "Lua Tutorial"
print(string.find(string, "Tutorial"))
reversedString = string.reverse(string)
print("The new string is".. reversedString)
-- Formatting strings
string1 = "Lua"
string2 = "Tutorial"
-- Basic string formating
print(string.format("Basic formatting %s %s", string1, string2))
-- Date formatting
date = 2; month = 1; year = 2014
print(string.format("Date formatting %02d/%02d/%02d", date, month, year))
-- Decimal formatting
print(string.format("%.4f", 1/3))
-- Character and Byte Representations
-- Byte conversion
-- First Character
print(string.byte("Lua"))
-- Third Character
print(string.byte("Lua",3))
-- First Character from last
print(string.byte("Lua",-1))
-- Second Character
print(string.byte("Lua",2))
-- Second Character from last
print(string.byte("Lua",-2))
-- Internal Numeric ASCII Conversion
print(string.char(97))
string1 = "Lua"
string2 = "Tutorial"
-- String Concatenations using ..
print("Concatenated string", string1..string2)
-- Length of string
print("Length of string1 is ", string.len(string1))
-- Repeating strings
repeatedString = string.rep(string1, 3)
print(repeatedString)
-- One dimensional array
array = {"Lua", "Tutorial"}
for i=0,2 do
print(array[i])
end
array={}
for i=-2,2 do
array[i]=i*2
end
for i=-2,2 do
print(array[i])
end
-- Multi dimensional array
--[[
can be implemented in two ways
- Array of arrays
- Single dimensional array by manipulating indices
--]]
print("Multi dimensional array:")
array={}
for i=1,3 do
array[i]={}
for j=1,3 do
array[i][j]=i*j
end
end
-- accessing the array
for i=1,3 do
for j=1,3 do
print(array[i][j])
end
end
-- Using manipulating indices
print("Manipulating indices")
array={}
maxRows=3
maxColumns=3
for row=1,maxRows do
for col=1,maxColumns do
array[row*maxColumns+col]=row*col
end
end
-- accessing the array
for row=1,maxRows do
for col=1,maxColumns do
print(array[row*maxColumns+col])
end
end
-- Iterators: Lap lai
array={"Lua","Tutorial"}
for key,value in ipairs(array)
do
print(key..value)
end
-- Stateless Iterators: Trinh lap khong trang thai
function square(iteratorMaxCount,currentNumber)
if currentNumber < iteratorMaxCount
then
currentNumber=currentNumber+1
return currentNumber, currentNumber*currentNumber
end
end
function squares(iteratorMaxCount)
return square,iteratorMaxCount,0
end
for i,n in squares(3)
do
print(i,n)
end
-- Stateful Iterators: Trinh lap trang thai
array={"Lua","Tutorial"}
function elementIterator(collection)
local index = 0
local count = #collection
-- The closure function is returned
return function()
index = index + 1
if index<=count
then
-- return the current element of the iterator
return collection[index]
end
end
end
for element in elementIterator(array)
do
print(element)
end

-- Metatables
--[[
A metatable is a table that helps in modifying the behavior of a table
it is attached to with the help of a key set and related meta methods
There ara two important methods that are used in handling metatables which includes
setmetatable(table, metatable) --> This method is used to set metatable for a table
getmetatable(table) - This method is used to get metatable of a table
--]]
mytable = {}
mymetatable = {}
setmetatable(mytable, mymetatable)
-- _index
mytable = setmetatable({key1="value1"},{
__index=function(mytable,key)
if key=="key2" then
return "metatablevalue"
else
return mytable[key]
end
end
})
print(mytable.key1..mytable.key2)
-- we can have a simplified version of the above program as shown below
mytable = setmetatable({key1="value1"},
{__index={key2="metatablevalue"}})
print(mytable.key1,mytable.key2)
-- __newindex
mymetatable = {}
mytable = setmetatable({key1="value1"},{__newindex=mymetatable})
print(mytable.key1)
mytable.newkey = "new value 2"
print(mytable.newkey, mymetatable.newkey)
mytable.key1 = "new value 1"
print(mytable.key1, mymetatable.newkey)
-- Updates the same table using rawset function is shown below
mytable = setmetatable({key1="value1"},{
__newindex = function(mytable, key, value)
rawset(mytable,key,"\""..value.."\"")
end
})
mytable.key1="new value"
mytable.key2=4
print(mytable.key1,mytable.key2)
-- Adding operator behavior to tables
mytable = setmetatable({1,2,3},{
__add = function(mytable, newtable)
for i=1,table.maxn(newtable) do
table.insert(mytable,table.maxn(mytable)+1,newtable[i])
end
return mytable
end
})
secondtable={4,5,6}
mytable=mytable+secondtable
for k,v in ipairs(mytable)
do
print(k,v)
end
-- __call
-- Adding behavior of method call is done using __call statement.
mytable = setmetatable({10},{
__call = function(mytable, newtable)
sum = 0
for i=1,table.maxn(mytable)
do
sum=sum+mytable[i]
end
for i=1,table.maxn(newtable)
do
sum=sum+newtable[i]
end
return sum
end
})
newtable = {10,20,30}
print(mytable(newtable))
-- __tostring
-- To change the behavior of the print statement, we can use the __tostring metamethod
mytable = setmetatable({10, 20, 30},{
__tostring = function(mytable)
sum = 0
for k,v in ipairs(mytable)
do
sum=sum+v
end
return "The sum of values in the table is " .. sum
end
})
print(mytable)
-- Coroutines
-- are collaborative in nature, which allows two or more methods to execute in a controlled manner
co=coroutine.create(function(Value1,value2)
	local tempvar3=10
	print("coroutine section 1", value1, value2, tempvar3)
	local tempvar1=coroutine.yield(value1+1,value2+1)
	tempvar3=tempvar3+value1
	print("coroutine section 2", tempvar1, tempvar2, tempvar3)
	local tempvar1,tempvar2=coroutine.yield(value1+value2,value1-value2)
	tempvar3=tempvar3+value1
	print("coroutine section 3", tempvar1, tempvar2, tempvar3)
	return value2,"end"
end)
print("main", coroutine.resume(co,3,2))
print("main", coroutine.resume(co,12,14))
print("main", coroutine.resume(co,5,6))
print("main", coroutine.resume(co,10,20))
-- Another coroutine example
function getNumber()
	local function getNumberHelper()
		co = coroutine.create(function()
			coroutine.yield(1)
			coroutine.yield(2)
			coroutine.yield(3)
			coroutine.yield(4)
			coroutine.yield(5)
		end)
		return co
	end
	if (numberHelper) then
		status, number = coroutine.resume(numberHelper);
		if coroutine.status(numberHelper)=="dead" then
			numberHelper = getNumberHelper()
			status,number = coroutine.resume(numberHelper)
		end
		return number
	else
		numberHelper = getNumberHelper()
		status,number = coroutine.resume(numberHelper)
		return number
	end
end
for index=1,10
do
print(index,getNumber())
end
-- File I/O
-- Implicit File Descriptors
-- Open a file in read
file = io.open("file.lua", "r")
-- sets the default input file as file.lua
io.input(file)
-- prints the first line of the file
print(io.read())
-- closes the open file
io.close(file)
-- Opens a file in append mode
file = io.open("file.lua", "a")
-- sets the default output file as file.lua
io.output(file)
-- appends a word test to the last line of the file
--io.write("-- End of the file.lua file")
-- closes the open file
io.close(file)
-- Explicit file Descriptors
-- Open a file in read
file = io.open("file.lua", "r")
-- prints the first line of the file
print(file:read())
-- closes the open file
file:close()
-- Opens a file in append mode
file = io.open("file.lua", "a")
-- appends a word test to the last line of the file
--file:write("-- test")
-- closes the open file
file:close()
-- Open a file in read
file = io.open("file.lua", "r")
file:seek("end",-25)
print(file:read("*a"))
-- closes the open file
file:close()
--[[
Error Handling
In order to avoid throwing these errors and handling errors, we need to use the functions pcall or xpcall
--]]
-- pcall(f, arg1, ...)
function myfunction()
	n = n/nil
end
if pcall(myfunction) then
	print("Success")
else
	print("Failure")
end
-- xpcall(f, err)
function myerrorhandler(err)
	print("ERROR:", err)
end
status=xpcall(myfunction,myerrorhandler)
print(status)
-- Database Access
-- Setting up connection
sqlite3 = require "luasql.sqlite3"
local env = sqlite3.sqlite3()
local conn = env:connect("mydb.sqlite")
print(conn)
-- conn:execute([['SQLite3STATEMENT']])
-- Create table example
status,errorString=conn:execute([[CREATE TABLE sample('id' INTEGER, 'name' TEXT)]])
print(status,errorString)
-- Insert statement example
--status,errorString=conn:execute([[INSERT INTO sample values('1', 'Raj')]])
--print(status,errorString)
cursor,errorString=conn:execute([[SELECT * FROM sample]])
print(cursor,errorString)
row=cursor:fetch({},"a")
while row
do
print(string.format("Id:%s, Name:%s",row.id,row.name))
-- reusing the table of results
row = cursor:fetch(row,"a")
end
-- close everything
cursor:close()
conn:close()
env:close()
