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

//----------------------
//Optional 選擇值
/*
 Optional是Swift特有的語法，比喻來說的話，是可以讓變數變成在與不在之間的狀態
 使用上如果還不想確定一個變數的預設值想要是什麼，或是變數有可能發生甚麼值都沒有情況，就可以使用Optinal，
 宣告方式是在任何資料型態後面加上 ? or !
 */

//任何資料型態都可以加上Optional
//被加上Optional的變數不能直接使用，使用前必須使用特殊的語法: 來讓變數變成一般資料型態

//ex:未來會有可能需要用到這個變數，可是目前還不知道這個要放什麼，
var optionalInt: Int? //Optional的整數
var optionalInt1: Int? = 1 //Optional的整數，預設值是1
var optionalInt2: Int? = nil //Optional的整數，預設值是什麼東西都沒有的nil，只有用Optional宣告的變數才能等於nil

/*
 題目:宣告三個浮點數，並加上optional，
 依序為：
 1.Optional的浮點數
 2.Optional的浮點數，預設值是1.1
 3.Optional的浮點數，預設值是nil
 */


//Optional的變數不能被直接使用，下面這些程式碼都不能執行，因為兩個變數都是Optional值
//var testOptionalInt = optionalInt + 1
//var testOptionalInt1 = optionalInt1 + 1
//var testOptionalInt2 = optionalInt2 + 1


//如果要想要使用Optional的變數

/*
 方法1: 強制解：變數加上 !，強制使用Optional值，編譯時不會出錯，但如果程式執行到這裡發現Optional變數裡沒有東西，就會當機，
 若要使用方法1，必須確認Optional變數在使用到時一定有值。
 */

//var testInt = optionalInt! + 1 //執行這裡時會當機，因為這一行optionalInt沒有值

optionalInt = 1 //要先讓optionalInt這個東西有值，才可以使用
var testInt2 = optionalInt! + 1
print(testInt2) // 2


/*
 題目: 宣告一個浮點數A，並加上optional後，預設值為1.5，再宣告一個浮點數B，值為浮點數A加上1.1
 print 浮點數B 應為 2.6
 */



/*
 方法2: 選擇解：if let，如果要解開的東西有值，則放進一個變數後執行{}內的程式。
 可以與else混用
 */

var optionalString: String? //Optional的字串

//如果optionalString有值，就會宣告一個常數text1，並把optionalString的值給text1，並執行 if 區段的程式，text1只會存活在 if 區段的程式內
if let text1 = optionalString {
    print(text1) //不會執行這裡，因為optionalString目前沒有值
} else {
    //print(text1) //這行會出錯，因為這邊呼叫不到text1
    print("optionalString 沒有東西喔！！！")
}

/*
 題目: 宣告一個整數C，並加上optional後，預設值為1，並使用 if let 語法，在if 區段 列印整數C
 
 提示: 需要給整數C一個預設值
 */


/*
 方法三3: 預設解 ?? ，如果optional的變數沒有值，則使用 ?? 後的值
 */

var defaultString = optionalString ?? "xxx" //如果optionalString有值，則把值指定給defaultString，否則把"xxx"指定給defaultString


/*
 題目:
 1.testAge 型態為一般的整數，預設值為0
 2.讓 testAge 等於 字典內的age的裡面的26
 
 提示: 字典取值時是 會是optional的型態，可以運用任何上述任一種方法讓他變成一般型態後放進 testAge這個變數裡面
 */

