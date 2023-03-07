import Foundation

//每一個print的地方確定會了就幫我註解起來再往下看，註解就是在程式碼前面加 //


// = 這個符號意義
// 把 = 右邊的值，放到 = 左邊的
var x = 1 //把1放到名稱叫x的容器裡面

//print()列印括號內的東西，可以放任何資料型態


//變數常數：
//var變數，let常數

//用var宣告的容器，裡面裝的值是可以改變的
var point: Int = 0

point = 1 //把number這個容器裝的值變成1

print(point) //輸出結果是1

//用let宣告的容器，裡面裝的值是固定不能動的
let text: String = "John"

//下面這句會錯，因為name是用let宣告的，所以不能變
//text = "Anna"


//資料型態
//Int整數，String字串，Float浮點數，Bool布林值
//主要看用途決定使用什麼型態
//容器一旦被宣告出來確定了型態，就不能再變換型態了

let name: String = "John" //這段程式碼用中文講就是： 宣告一個常數容器，容器名稱是 name，型態是String，值是"John"

let height: Float = 173.4

let age: Int = 26

let isChildren: Bool = false

let name1 = "John" //宣告時型態可以不寫，電腦會自動決定name1的型態是String

// \(): 把任何東西變成String，插入字串
var zzz = "我的身高是\(height)"
print(zzz) //輸出結果是 我的身高是173.4

//題目: 宣告 Int整數，String字串，Float浮點數，Bool布林值 各一個， 來記錄 你的 名字(myName)，身高(myHeight)，年紀(myAge)，是不是成人(isAdult)
//變數名稱用()內的英文

let myName: String = "xxx" //舉例，剩下的給你改

//陣列
//陣列也是一種資料型態
//陣列就是一個容器裡面有複數個容器
//陣列可以是任何資料型態的陣列 ex: String陣列，Int陣列
//陣列只能同時放一種資料型態， ex: String陣列，只能放String
//陣列是有先後順序的，並且有編號 編號是從0開始

let numbers: [Int] = [] // 宣告一個常數容器，容器名稱是 numbers，型態是[Int]，值是 空的陣列，所以這個陣列不能再放東西進去了
var names: [String] = ["John", "Anna"]  //宣告一個變數容器，容器名稱是 names，型態是[String]，值有兩個 "john" 跟 "Anna"

//陣列基本應用
//取得陣列有幾個元素
let count = names.count // names.count: 取得這個陣列有幾個元素，把這個數值放進count的容器裡
print(count) // 結果是2

//陣列取值，注意：[0]指的是編號幾的意思，數字不能超過陣列目前有的編號
//ex: names目前的只有兩個元素，編號是0,1所以[]內不能給２
let test = names[0] // names[0]: 取得names這個陣列的編號0的元素，把這個數值放進test裡，所以test目前的值會是"John"
print(test) // 結果是"John"

//只有用var宣告的陣列才可以改變
//陣列新增元素append
names.append("Andy")// 在names這個陣列新增一個 "Andy"
print(names) // 結果會是 ["John", "Anna", "Andy"]

//陣列刪除元素
names.remove(at: 0)
print(names) // 結果會是 ["Anna", "Andy"]

//題目: 宣告 一個名字是 紀錄水果(fruits) 的字串陣列 裡面要有"banana","apple"
//宣告完成後用append的方式新增一個 "watermelon"
//並用remove的方式移除掉編號1的元素
//print出 fruit這個陣列，結果要是長這樣["banana","watermelon"]

var fruits: [String] = [] //幫你開頭，這行還沒寫完給你寫



//字典
//字典是一個特殊的資料型態，都是一個key跟一個value組合而成的
//每個字典的key都是獨特的，只會出現一次
//字典沒有順序概念
//字典的key跟value可以是任何的資料型態，通常key會是String才能表示用途

//宣告一個容器 叫做 dict，型態是[String: String] 的字典
var dict: [String: String] = [
    "name": "John",
]

//只有用var宣告的字典才可以改變

dict["sex"] = "M" //這行有兩種意義，新增或是修改，如果這個字典沒有 "sex" 這個位置，就會新增一個 "sex" 的位置，值為"M"，如果已經有放東西了，就把這個位子的值換成"M"

print(dict) // ["sex": "M", "name": "John"]

//字典取值
let sex = dict["sex"] // 把這個字典的sex這個位置放的值 給sex這個容器
print(sex) // Optional("M") 為什麼是Optional("M")之後會說
//如果不要Optional就先寫 ?? ""
let sex1 = dict["sex"] ?? ""
print(sex1) // "M"

/*
 題目: 宣告 一個名字是 個人資訊personalInfo 的[String: String]字典 裡面要有兩個位置key 分別是"name" 跟 "color"
 value是什麼自己決定，但是必須盡量符合key的意義，這樣用字典才有意義
 name指的是名字，color指的是膚色
 
 宣告完成後新增一組值 key是 "hairColor" ，value自己決定
 hairColor指的是髮色
 */



//判斷式
//如果 if 後面的條件是為真，則執行if區段的程式碼，否則執行else區段的程式碼
//判斷子 == 如果左右兩邊相等則為真
//判斷子 != 如果左右兩邊不相等則為真
//判斷子 < 如果左邊小於右邊則為真
//判斷子 > 如果左邊大於右邊則為真
//判斷子 >= 如果左邊大於或等於右邊則為真
//判斷子 <= 如果左邊小於或等於右邊則為真
//判斷子 && 如果左右兩邊都為真 才為真
//判斷子 || 如果左右兩邊其中一個 就為真

var money: Int = 100

//如果mony的值不等於100，這邊應該會列映出成功
if (money != 100) {
    print("成功")
} else {
    print("失敗")
}

//題目1：在不執行的情況下，思考下面這些程式碼會列印出什麼結果
money = 1000

if ((money > 100) && (money < 1000) ) {
    print("我好帥")
} else {
    print("我好醜")
}




//題目2：寫出以下敘述的程式碼：
//如果money大於或等於10則列印 "我很有錢" 否則則列印 "我沒有錢"


//題目3：寫出以下敘述的程式碼：
//宣告一個變數 point 值是 65
//如果point大於60而且小於70則列印 "我比及格好一點" 否則則列印 "我不想說我的分數"



//ForLoop for迴圈
//for迴圈就是按照順序一次跑一個人的大隊接力
//每一圈都會執行相同的程式碼
//陣列有幾個元素就會跑幾圈
//正在跑的那個人會是一個常數，是完全不能被影響的

var names1: [String] = ["a","b","c","d","e"]

//name就是正在跑的人，會根據每一圈代表不同人
for name in names1 {
    let testName = name //testName這個常數每圈都會從新宣告一次，每次的值是大隊接力中目前正在跑的name
    print(testName)//第一圈會列印a，第一圈會列印b
}

//題目1: 宣告一個有 1,3,5,7,9 五個數字的整數陣列
//For迴圈跑這個陣列
//在迴圈內宣告一個常數叫做testNumber，值是目前每一圈正在跑的那個數字+1
//列印出testNumber 應該會依序列印出 2 4 6 8 10



//題目2: 結合for 跟 if 寫出以下敘述的程式碼：
//讓上面names1這個陣列的元素去跑迴圈
//如果正在跑的人是"c"則列印 "C正在跑步" 否則則列印 "其他人在跑步"
//結果應該會依序出現 "其他人在跑步" "其他人在跑步" "C正在跑步" "其他人在跑步" "其他人在跑步"

//幫你寫回圈出來了，剩下給你寫
for name in names1 {
    //題目2的答案寫在下面
}



//綜合應用：處理陣列跟字典的複合式資料
//迴圈外 宣告一個空的字串陣列 namessssss 準備放字串
//這是一個很多字典組合成的陣列，For迴圈跑這個陣列
//在每一圈取得當前正在跑的字典的"name"裡面的值，並放進一個叫做name的常數裡面
//字典取值的時候先幫我加上 這個(?? "") ex: let name = dict["name"] ?? ""
//在每一圈把 name 這個變數 新增進去到 namessssss 裡面
//迴圈外面 列印namessssss ，結果應該是["john", "Anna", "Andy"]

var dicts: [[String:String]] = [
   [
    "name":"john",
    "sex": "M"
   ],
   [
    "name":"Anna",
    "sex": "F"
   ],
   [
    "name":"Andy",
    "sex": "M"
   ]
]

var namessssss: [String] = [] //迴圈外 宣告一個空的字串陣列 namessssss 準備放字串

for dict in dicts {
    //綜合應用的答案寫在這
}

print(namessssss)//迴圈外面 列印namessssss ，結果應該是["john", "Anna", "Andy"]
