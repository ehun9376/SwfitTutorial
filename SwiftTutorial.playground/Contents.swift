import Foundation

//每一個print的地方確定會了就幫我註解起來再往下看，註解就是在程式碼前面加 //


// = 這個符號意義
// 把 = 右邊的值，放到 = 左邊的
var x = 1 //把1放到名稱叫x的容器裡面

//print()列印括號內的東西，可以放任何資料型態

//---------------------------------變數與資料型態-----------------------------
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


//---------------------------------陣列-----------------------------

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


//---------------------------------字典-----------------------------
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


//---------------------------------if判斷式-----------------------------
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

//else後面也可以加上if， 中文翻譯就是 又如果

if money > 100 {
    print("我有超過100元的錢")
} else if money > 90 {
    print("我有超過90元但不超過100的錢")
} else if money > 80 {
    print("我有超過80元但不超過90的錢")
} else {
    print("我的錢不到80")
}


//題目1：在不執行的情況下，思考下面這些程式碼會列印出什麼結果
money = 1000

if ((money > 100) && (money < 1000)) {
    print("我好帥")
} else {
    print("我好醜")
}




//題目2：寫出以下敘述的程式碼：
//如果money大於或等於10則列印 "我很有錢" 否則則列印 "我沒有錢"


//題目3：寫出以下敘述的程式碼：
//宣告一個變數 point 值是 65
//如果point大於60而且小於70則列印 "我比及格好一點" 否則則列印 "我不想說我的分數"


//---------------------------------For迴圈----------------------------
/*
 ForLoop for迴圈
 for迴圈就是按照順序一次跑一個人的大隊接力
 每一圈都會執行相同的程式碼
 陣列有幾個元素就會跑幾圈
 迴圈中正在跑的人如果是一個基本的資料型態(Int,String等等)，那這個值是不能被改變的
 */

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

//---------------------------------Optional 選擇值-----------------------------
/*
 Optional是Swift特有的語法，比喻來說的話，是可以讓變數變成在與不在之間的狀態
 使用上如果還不想確定一個變數的預設值想要是什麼，或是變數有可能發生甚麼值都沒有情況，就可以使用Optinal，
 宣告方式是在任何資料型態後面加上 ? 或是 !
 
 
 */
/*
 //舉例來說，用一個 myTestPoint變數來表達我的考試成績很簡單
 只需要
 var myTestPoint: Int = 90
 就好
 
 但是要是我還沒有考試，還沒有成績呢，要怎麼用一個變數可以同時表達這兩件事情
 此時就可以用 Optional來表示
 */

var myTestPoint: Int? //因為還沒有成績所以先不給數字

//如果myTestPoint有成績就列印 我的考試成績是多少，
if let point = myTestPoint {
    print("我的考試成績是\(point)")
} else {
    print("我還沒有考試")
}




//任何資料型態都可以加上Optional
//被加上Optional的變數不能直接使用，使用前必須使用特殊的語法: 來讓變數變成一般資料型態

//ex:未來會有可能需要用到這個變數，可是目前還不知道這個要放什麼，
var optionalInt: Int? //Optional的整數
var optionalInt1: Int? = 1 //Optional的整數，預設值是1
var optionalInt2: Int? = nil //Optional的整數，預設值是什麼東西都沒有的nil，只有用Optional宣告的變數才能等於nil
var optionalInt3: Int!

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


//---------------------------------func 函式-----------------------------
/**
 函式宣告時用關鍵字 func
 
 函式就像是一個機器，機器開始工作之前我們要先把流程規劃好，把這個函式要做什麼事情先寫好，等到適當的時機再拿出來使用。
 有分為
 1.沒有回傳值的函式
 2.有回傳值的函式
 跟其他
 */

/**
 沒有回傳值的函式
 這是一個叫做 printSomething 的函式
 當我使用它時他會執行 大括號{} 中的程式碼此時只是宣告，還不會被執行
 */

func printSomething() {
    print("TTT")
}


printSomething() //呼叫printSomething這個函式
printSomething() //可以重複呼叫

/**
 函式也可以在使用它時餵參數給它，就如同現實中我們給機器原物料，請他做事情
 參數也可以設定有預設值，當沒有給參數一個新的值時，函式會使用參數的預設值
 */

//這是一個叫做addOneAndPrint的函式，它的功用是我餵給他一個數字，他就會列印出這個數字加上1
//point 是參數名稱 型態是 Int
func addOneAndPrint(point: Int) {
    print(point+1)
}

//執行這個函式時
addOneAndPrint(point: 2) //輸出結果是3
addOneAndPrint(point: 100) //輸出結果是101

//這是一個叫做addTwoAndPrint的函式，它的功用是我餵給他一個數字，他就會列印出這個數字加上2，如果沒有餵一個新的值，則使用參數的預設值，
func addTwoAndPrint(point: Int = 1) {
    print(point + 2)
}

addTwoAndPrint(point: 5) //輸出結果是 7
addTwoAndPrint() //有預設值的話就可以不給新的值，參數用預設值，輸出結果會是 3

//參數也可以一次給好多個
//這是一個叫做printAverage的函式，使用它時要給他 a 跟 b 兩個數字，他會列印出這兩個數字相加除2
func printAverage(a: Int, b: Int) {
    let total = a+b
    print(total/2)
}

printAverage(a: 100, b: 200) // 輸出結果是150

/**
 有回傳值的函式
 使用有回傳值的函式時可以拿到這個函式運算過後產生的值，
 就像是工廠經過生產線後給你成品。
 
 要回傳值時要用return
 
 有回傳值的函式也可以餵參數
 */

//這是一個會給你字串 "TTT" 的函式
func giveMeStringTTT() -> String {
    return "TTT"
}

let ttt = giveMeStringTTT()
print(ttt) // 結果會是"TTT"


//這是一個會給把 你給point加上1的 並且回傳給你的函式
func giveMeAddOne(point: Int) -> Int {
    return point + 1
}

let testPoint = giveMeAddOne(point: 1)
print(testPoint) //輸出結果是2


//題目1:一個叫做addTenAndPrint的函式，它的功用是我餵給他一個數字，他就會列印出這個數字加上10，參數預設值是 10

//這個func尚未宣告完成 剩下給你寫
func addTenAndPrint() {
    
}


//題目2:寫一個叫做printThreeNumberAvg的函式，它的功用是我餵給他三個數字，他就會回傳 這三個數字平均數
//提示:三個數相加後除3

//這個func尚未宣告完成 剩下給你寫
func printThreeNumberAvg() {
    
}

//題目3: 寫一個叫做printArrayAvg，它的功用是我餵給他一個數字陣列 [Int] ，他會計算這個數字陣列的平均並回傳
//提示： 宣告一個 變數total 來儲存總和 ， 用for迴圈跑這個陣列，把total 加上這個陣列的每一個數字，最後print total除這個陣列的count

func printArrayAvg(array: [Int]) {
    
}

//---------------------------------guard 判斷式-----------------------------
/*
 guard的作用就像一個警衛，用法類似於if，通常會用在 func中
 寫if時不一定需要寫else，但寫guard時一定要有else跟return搭配
 
 if是：如果條件成立，則執行{}中的程式碼；
 guard是: 如果條件成立 則繼續執行guard下方的程式碼，否則則執行else段的程式後結束
 */

//這是一個用來判斷名字是不是"John的func，當我呼叫這個func時，他會根據我輸入的參數執行不同的程式"
func judgeName(name: String) {
    
    //判斷參數name是不是"John"
    guard name == "John" else {
        print("你的名字不是John，給我離開")
        return //結束這個func，guard 條件式 後一定要有else ，else的程式內一定要有return。
    }
    
    
    print("John您好，歡迎回家") //如果 name == "John" 則會執行這一行

}

judgeName(name: "John") // 輸出結果是 "John您好，歡迎回家"
judgeName(name: "Anna") // 輸出結果是 "你的名字不是John，給我離開"



//---------------------------------enum 列舉-----------------------------
/*
 列舉是一種包含了自定義的各種狀況的資料型態
 
 使用的情況主要是為了協助我們在有限的情況中定義與分類，假設我們需要定義寵物的種類，就可以使用enum，通常會與Switch搭配使用
 列舉也是一種資料型態
 
 舉例來說如果我要判對我的寵物是什麼種類，在沒有使用enum，只使用字串或是數字的時候像這樣:
 
 if myPet == "cat" {
    print("我的寵物是貓")
 }
 
 if myPet == "dog" {
    print("我的寵物是貓")
 }
 
 必須每次判斷都需要重打一次字串，很麻煩，如果字串不小心打錯，就喪失這個判斷本來應該要有的功能，這時就可以使用列舉來協助

 */

enum Pet {
    
    ///狗
    case dog
    
    ///貓
    case cat
    
    ///兔子
    case rabbit
    
    ///鳥
    case bird
}

var myPet: Pet = Pet.cat

if myPet == Pet.cat {
    print("我的寵物是貓")
}

//如果確定這個變數的資料型態是一個列舉，那可以審略Pet
if myPet == .dog {
    print("我的寵物是狗")
}

//列舉也可以承載有意義的資料

//像這個 載具 列舉 就是帶著字串的列舉，列舉中的每個case 都必須要=一個字串，如果沒有給，那就會預設是這個case 自己的名稱
enum Vehicle: String {
    case bus = "巴士"
    case car = "車"
    case bicycle = "腳踏車"
    case moto
}

var myVehicle: String = Vehicle.bus.rawValue //使用時在列舉後面加上 rawValue 就可以獲得這個列舉帶的字串
var myVehicle1: String = Vehicle.moto.rawValue

print(myVehicle) //輸出結果是巴士
print(myVehicle1) //輸出結果是moto，因為這個列舉沒有給他字串，所以他會自帶他自己的字串

//enum也可以帶數字
enum Rank: Int {
    case champion = 1
    case second = 2
    case third = 3
}


let myRank: Rank = .second
let myRankNumber: Int = myRank.rawValue

//當列舉是帶數字時，如果審略每個列舉帶的數字，則程式會幫從0開始按照順序填滿
enum RankB: Int {
    case champion // 0
    case second // 1
    case third //2
}

let myRankB: RankB = .second
let myRankBNumber: Int = myRankB.rawValue

//---------------------------------switch-----------------------------
/**
 使用上類似
 if {
 } else if {
 } else if {
 }
 主要差別是時機點的不同，if 判斷式主要使用在程式撰寫時 要判斷的事情 不確定有多少可能的情況時，如果發生了某種情況則執行
 switch則是 在程式撰寫時就知道有 幾種的情況，在撰寫時就必須要把所有可能發生的情況都列出來，如果發生其中一種情況則執行
 
 switch是 處理有限的狀況，enum則是定義可能有的情況。因此通常enum跟switch會互相搭配使用
 */

//承上面 enum Pet ，舉例來說如果要寫一個判斷我的寵物是什麼的程式

//用if else if 來寫會是
if myPet == .cat {
    print("我的寵物是貓")
} else if myPet == .dog {
    print("我的寵物是狗")
} else {
    print("我的寵物不是貓也不是夠")
}

//用switch來寫的話會是
//必須把所有可能的情況都列出來，如果把其中一個case 刪除掉，電腦會提醒你錯誤，請你把所有的情況都補齊
switch myPet {
case .dog:
    print("我的寵物是狗")
case .cat:
    print("我的寵物是貓")
case .rabbit:
    print("我的寵物兔子")
case .bird:
    print("我的寵物鳥")
}

//如果不想列出所有的情況，則要使用default。
//如果某種情況不想執行任何程式，則可以用break結束這次switch

switch myPet {
case .dog:
    print("我的寵物是狗") //如果myPet 是 dog則執行這行
case .cat:
    break //如果myPet 是 cat則不執行任何程式，結束這次switch
default:
    print("我的寵物沒有被switch列舉出來") //如果myPet不在上述有case 出來的情況內，則執行這行
}

//如果有兩個情況要做同一件事情的時候
switch myPet {
case .dog, .cat, .rabbit:
    print("我的寵物有四隻腳") //如果myPet 是 dog, cat, rabbit 都會執行這行
case .bird:
    print("我的寵物有兩隻腳") //如果myPet 是 bird 執行這行
}

//進階用法: switch區間

let myWeight: Int = 100

switch myWeight {
case 0..<50:
    print("體重太輕了")
case 51..<80:
    print("體重正常")
case 81..<100:
    print("體重過重")
default:
    print("體重超出了定義")
}


//定義enum時

//題目寫出一個 叫做 Zoo的enum，這是一個用來定義動物園裡面的動物的列舉，並定義出3種以上的動物，並且用Switch





//---------------------------------class 類別 物件 -----------------------------
/**
 類別算是一種複合式的資料型態，可以把想像成一個包裹，裏面包含各種資料型態 、 func 等
 並且也是需要先定義出來，等到適當的時機才可以使用，
 並且class可以有初始化函式 init ，當一個class準備要初始化時可以呼叫這個初始化函式，並給予參數，讓這個class依照自定義的方式初始化，
 初始化函式只會在class被產生時使用
 
 用 class 產生出來的變數我們會稱之為物件
 */

//這個是一個 用來表示個人資訊的class ，這個class中 有四個變數 name用來記錄名字，age用來記錄年齡，sex用來記錄性別，married用來記錄是否已經結婚了
class PersonInfo {
    
    //class也可以定義enum
    //性別列舉
    enum Sex {
        //男性
        case male
        
        //女性
        case female
    }
    
    //身份
    var name: String = ""
    
    //年齡
    var age: Int = 0
    
    //性別，這是一個列舉
    var sex: Sex = .male
    
    //婚姻狀態
    var married: Bool = false
    
    //初始化函式: 這個class初始化時要給四個參數
    init(
        name: String, //如果沒有給預設，當初始化時就一定要給一個值
        age: Int,
        sex: Sex = .male, //跟func 一樣，參數可以給預設值，都初始化這個class時，如果沒有給sex參數一個新的值的話，就會預設是male
        married: Bool = false //同上，預設是false
    ) {
        /*
         = 左邊的name指的是這個class 中的name， = 右邊的name指的是初始化時丟進來的參數， self用來表示這個是這個class中的name，
         習慣上在使用到class中的變數時會在變數前面加上self
         */
        self.name = name
        self.age = age
        self.sex = sex
        self.married = married
    }
    
    //class除了變數外，也可以擁有函式
    //這是一個用來變換結婚狀態的func，他會根據傳入的marry參數的值，變換class中的married的值，並且列印出目前的結婚狀態
    func changeMarriedStatus(marry: Bool) {
        married = marry //把這個class中的married這個變數，變成傳進來的marry這個參數的值
        
        if married {
            print("我的婚姻狀態是結婚") //如果 married為true則執行這裡
        } else {
            print("我的婚姻狀態是未婚") //否則執行這裡
        }
        
    }
    
    //當然也可以擁有有回傳值的func
    //這是一個可以拿到是不是成年的func，會印出文字並回傳一個Bool值
    func getIsAdultStatus() -> Bool {
        
        //如果 age 大於等於18則往下執行，否則執行else
        guard self.age >= 18 else {
            print("未滿18")
            return false
        }
        
        print("滿18了我成年了")
        return true
    }
    
    
    
}

//這是一個叫做 johnInfo的變數，型態是PersonInfo，初始化時sex跟married都有新的值
var johnInfo: PersonInfo = PersonInfo(name: "John", age: 20, sex: .male, married: true)

//這是一個叫做 annaInfo的變數，型態是PersonInfo，初始化時sex跟married都有新的值
var annaInfo: PersonInfo = PersonInfo(name: "Anna", age: 17, sex: .female, married: false)

//這是一個叫做 jackInfo的變數，型態是PersonInfo，初始化時sex跟married都使用預設值
var jackInfo: PersonInfo = PersonInfo(name: "jack", age: 31)

//這三個物件的型態都是PersonInfo ，他們通通擁有PersonInfo的所有變數跟函式


print(johnInfo.name) //列印johnInfo裡的name，輸出結果是"John"
print(johnInfo.age) //列印johnInfo裡的age，輸出結果是20
print(johnInfo.sex) //列印johnInfo裡的sex，輸出結果是male
print(johnInfo.married) //列印johnInfo裡的sex，輸出結果是true
//可以print看看其他兩個的各個項目是什麼

//取得johnInfo中的getIsAdultStatus回傳值來判斷要執行哪行程式
if johnInfo.getIsAdultStatus() {
    print(johnInfo.name + "已經成年了") //如果getIsAdultStatus()回傳為true則執行這行，輸出結果是 johnInfo的name加上"已經成年了"； John已經成年了
} else {
    print(johnInfo.name + "還未成年") //否則則執行這行，輸出結果是 johnInfo的name加上"還未成年"； John還未成年
}


print(johnInfo.married) //列印johnInfo裡的sex，輸出結果是true
johnInfo.changeMarriedStatus(marry: false) //呼叫johnInfo中的func，並給予參數，這個func的做用根據傳入的參數改變johnInfo.married的狀態
print(johnInfo.married) //列印johnInfo裡的sex，輸出結果是false

//---------------------------------struct 結構-----------------------------
/**
 struct的概念與class類似，差別在於
 當用Class宣告出一個A變數後，用一個B變數=A變數，這兩個變數會是同一個源頭的class，
 當改變B變數時，A也會被改變
 */
//---------------------------------protocol 協定-----------------------------




