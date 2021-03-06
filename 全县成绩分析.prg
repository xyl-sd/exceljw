******统计临沭县各校的各段成绩\名次的人数******
*
*     20190116      *
* 20190505 增添求1000名及4500名的各校平均分20200106删除此功能
* 20200106增添按建档数95和90的各校平均分统计
* 20210129平均各年级均只按98统计，为防万一，保留了95。
*	八/九年级考评90，95，七年级考评95，98
* 	七年级不需再改。
*  内有两个学籍数，删除后一个。
*
**********************************************

**********************************************
set talk off
messagebox('确认各字段命名均为汉字，特别注意：姓名、考号、班级、道法、总成绩、学校。————点确定后选择成绩数据库',1)
use ? in 1		&&打开成绩表
sele 1
go top
nj=int(val(substr(考号,3,1))+6)*100 &&获取年级为700，800，900
	if  .not. directory('e:\cjfx')		 &&创建目录“成绩分析”
		md e:\cjfx
		? '新建目录e:\cjfx'
	endif
	set default to e:\cjfx				&&默认目录
	? '文件默认存放于e:\cjfx'
	clear 
creat table bzk(姓名 c(8),考号 c(9),班级 c(8), 语文 n(8),语文名次 n(8),数学 n(8),数学名次 n(8), ;
英语 n(8),英语名次 n(8),物理 n(8),物理名次 n(8),化学 n(8),化学名次 n(8),道法 n(8),道法名次 n(8), ;
历史 n(8),历史名次 n(8),地理 n(8),地理名次 n(8),生物 n(8),生物名次 n(8), ;
总成绩 n(8),学校排名 n(8),年级排名 n(8),学校 c(8) ) &&标准库
creat table tjk(学校 c(8),总分上 n(8),总人数 n(8),总成绩 n(8,2),语文 n(8,2),数学 n(8,2),英语 n(8,2), ;
物理 n(8,2),化学 n(8,2),道法 n(8,2),历史 n(8,2),地理 n(8,2),生物 n(8,2),总分率 n(8,2),语文率 n(8,2),数学率 n(8,2),英语率 n(8,2), ;
物理率 n(8,2),化学率 n(8,2),道法率 n(8,2),历史率 n(8,2),地理率 n(8,2),生物率 n(8,2),校名 c(8)  ) &&统计库
creat table mck(mc n(8)) &&名次库
	insert into mck(mc) value (10)
	insert into mck(mc) value (50)
	insert into mck(mc) value (100)
	insert into mck(mc) value (200)
	insert into mck(mc) value (500)
	insert into mck(mc) value (700)
	insert into mck(mc) value (1000) &&三初用
	insert into mck(mc) value (1500)
	insert into mck(mc) value (2000)
	insert into mck(mc) value (2500)
	insert into mck(mc) value (3000)
	insert into mck(mc) value (3500)
	insert into mck(mc) value (4000)
	insert into mck(mc) value (4500) &&三初用

creat table pjtjk(单位 c(8),代码 c(2),建档数 n(8),最高分 n(8),人数98 n(8,0),平均分98 n(8,3),平均98名次 n(8,0),;
				人数95 n(8,0),平均分95 n(8,3),平均95名次 n(8,0),	;
		语文 n(8,3),数学 n(8,3),英语 n(8,3),物理 n(8,3),化学 n(8,3),道法 n(8,3),历史 n(8,3),地理 n(8,3),生物 n(8,3)	) &&平均分统计库
	do case
	case nj=700 		&&="insert into pjtjk(单位,代码,建档数) values ("""&$G2&""","""&$F2&""","&C2&")"
insert into pjtjk(单位,代码,建档数) values ("一初","01",709)
insert into pjtjk(单位,代码,建档数) values ("二初","02",1578)
insert into pjtjk(单位,代码,建档数) values ("三初","03",1333)
insert into pjtjk(单位,代码,建档数) values ("四初","04",786)
insert into pjtjk(单位,代码,建档数) values ("周庄","05",191)
insert into pjtjk(单位,代码,建档数) values ("店头","06",215)
insert into pjtjk(单位,代码,建档数) values ("石门","07",449)
insert into pjtjk(单位,代码,建档数) values ("古龙","08",206)
insert into pjtjk(单位,代码,建档数) values ("大兴","09",271)
insert into pjtjk(单位,代码,建档数) values ("蛟龙","10",387)
insert into pjtjk(单位,代码,建档数) values ("东盘","11",139)
insert into pjtjk(单位,代码,建档数) values ("玉山","12",323)
insert into pjtjk(单位,代码,建档数) values ("青云","14",284)
insert into pjtjk(单位,代码,建档数) values ("白旄","15",370)
insert into pjtjk(单位,代码,建档数) values ("五初","16",298)
insert into pjtjk(单位,代码,建档数) values ("南古","17",196)
insert into pjtjk(单位,代码,建档数) values ("曹庄","18",252)
insert into pjtjk(单位,代码,建档数) values ("新星","19",56)
insert into pjtjk(单位,代码,建档数) values ("英才","20",49)
insert into pjtjk(单位,代码,建档数) values ("兴华","21",318)
insert into pjtjk(单位,代码,建档数) values ("北城","22",656)
insert into pjtjk(单位,代码,建档数) values ("全县","99",9066)


	case nj=800
insert into pjtjk(单位,代码,建档数) values ("一初","01",576)
insert into pjtjk(单位,代码,建档数) values ("二初","02",1419)
insert into pjtjk(单位,代码,建档数) values ("三初","03",1501)
insert into pjtjk(单位,代码,建档数) values ("四初","04",643)
insert into pjtjk(单位,代码,建档数) values ("周庄","05",176)
insert into pjtjk(单位,代码,建档数) values ("店头","06",212)
insert into pjtjk(单位,代码,建档数) values ("石门","07",419)
insert into pjtjk(单位,代码,建档数) values ("古龙","08",154)
insert into pjtjk(单位,代码,建档数) values ("大兴","09",230)
insert into pjtjk(单位,代码,建档数) values ("蛟龙","10",307)
insert into pjtjk(单位,代码,建档数) values ("东盘","11",116)
insert into pjtjk(单位,代码,建档数) values ("玉山","12",310)
insert into pjtjk(单位,代码,建档数) values ("青云","14",258)
insert into pjtjk(单位,代码,建档数) values ("白旄","15",321)
insert into pjtjk(单位,代码,建档数) values ("五初","16",243)
insert into pjtjk(单位,代码,建档数) values ("南古","17",151)
insert into pjtjk(单位,代码,建档数) values ("曹庄","18",218)
insert into pjtjk(单位,代码,建档数) values ("新星","19",51)
insert into pjtjk(单位,代码,建档数) values ("英才","20",47)
insert into pjtjk(单位,代码,建档数) values ("兴华","21",199)
insert into pjtjk(单位,代码,建档数) values ("北城","22",352)
insert into pjtjk(单位,代码,建档数) values ("全县","99",7903)



	case nj=900
insert into pjtjk(单位,代码,建档数) values ("一初","01",599)
insert into pjtjk(单位,代码,建档数) values ("二初","02",1295)
insert into pjtjk(单位,代码,建档数) values ("三初","03",1232)
insert into pjtjk(单位,代码,建档数) values ("四初","04",597)
insert into pjtjk(单位,代码,建档数) values ("周庄","05",193)
insert into pjtjk(单位,代码,建档数) values ("店头","06",258)
insert into pjtjk(单位,代码,建档数) values ("石门","07",483)
insert into pjtjk(单位,代码,建档数) values ("古龙","08",168)
insert into pjtjk(单位,代码,建档数) values ("大兴","09",216)
insert into pjtjk(单位,代码,建档数) values ("蛟龙","10",246)
insert into pjtjk(单位,代码,建档数) values ("东盘","11",92)
insert into pjtjk(单位,代码,建档数) values ("玉山","12",307)
insert into pjtjk(单位,代码,建档数) values ("青云","14",260)
insert into pjtjk(单位,代码,建档数) values ("白旄","15",335)
insert into pjtjk(单位,代码,建档数) values ("五初","16",259)
insert into pjtjk(单位,代码,建档数) values ("南古","17",150)
insert into pjtjk(单位,代码,建档数) values ("曹庄","18",219)
insert into pjtjk(单位,代码,建档数) values ("新星","19",20)
insert into pjtjk(单位,代码,建档数) values ("英才","20",68)
insert into pjtjk(单位,代码,建档数) values ("兴华","21",184)
insert into pjtjk(单位,代码,建档数) values ("北城","22",311)
insert into pjtjk(单位,代码,建档数) values ("全县","99",7492)


	endcase

		replace all 人数98 with 建档数*0.98
		replace all 人数95 with 建档数*0.95
		
sele 1
erase xx.dbf
erase x1.dbf
copy to xx.dbf
sele bzk
dele all
pack
appe from xx.dbf
replace all 学校 with subs(考号,4,2)
replace all 总成绩 with 语文+数学+英语+物理+化学+道法+历史+地理+生物
dele all for isblank(学校)
pack
sort to x0  on 生物/d,总成绩/d,数学/d,英语/d,语文/d
use x0
repl all 生物名次 with recn()
sort to x2  on 数学/d,总成绩/d,数学/d,英语/d,语文/d
use x2
repl all 数学名次 with recn()
sort to x3  on 语文/d,总成绩/d,数学/d,英语/d,语文/d
use x3
repl all 语文名次 with recn()
sort to x4  on 英语/d,总成绩/d,数学/d,英语/d,语文/d
use x4
repl all 英语名次 with recn()
sort to x5  on 物理/d,总成绩/d,数学/d,英语/d,语文/d
use x5
repl all 物理名次 with recn()
sort to x6  on 化学/d,总成绩/d,数学/d,英语/d,语文/d
use x6
repl all 化学名次 with recn()
sort to x7  on 道法/d,总成绩/d,数学/d,英语/d,语文/d
use x7
repl all 道法名次 with recn()
sort to x8  on 历史/d,总成绩/d,数学/d,英语/d,语文/d
use x8
repl all 历史名次 with recn()
sort to x9  on 地理/d,总成绩/d,数学/d,英语/d,语文/d
use x9
repl all 地理名次 with recn()
sort to x1  on 总成绩/d,考号/a,数学/d,英语/d,语文/d
use x1
repl all 年级排名 with recn()
use
erase x0.dbf
erase x2.dbf
erase x3.dbf
erase x4.dbf
erase x5.dbf
erase x6.dbf
erase x7.dbf
erase x8.dbf
erase x9.dbf
use  bzk
dele all
pack
appe from  x1
sele tjk
dele all
pack
名次1=1

sele mck
go top
do while .not.eof()
名次1=mc
sele bzk
?'   '
?'名次：'
??名次1
?'*************正在统计以下单位, 请稍等,不要退出!***************'
aver 语文 for 语文名次=名次1 to mc1
aver 数学 for 数学名次=名次1 to mc2 
aver 英语 for 英语名次=名次1 to mc3 
aver 物理 for 物理名次=名次1 to mc4 
aver 化学 for 化学名次=名次1 to mc5 
aver 道法 for 道法名次=名次1 to mc6
aver 历史 for 历史名次=名次1 to mc7
aver 地理 for 地理名次=名次1 to mc8
aver 生物 for 生物名次=名次1 to mc9
aver 总成绩 for   年级排名=名次1 to mc0
  sele tjk
      appe blan
      repl 语文 with mc1,数学 with mc2,英语 with mc3,总分上 with 名次1,物理 with mc4,化学  with mc5, ;
      道法 with mc6,历史 with mc7,地理 with mc8,生物 with mc9,总成绩 with mc0,学校 with  '分值'

* 统计各班人数，双进线
sele bzk
go top
nj=int(val(substr(考号,3,1))+6)*100
for i=1 to 22
sele bzk
	go top
	ibj=substr(str(i+100),9,2)+space(6) &&将学校由数值变字符
    count to x for 学校=ibj
    count to gf1 for 语文>=mc1 .and. 学校=ibj 
    count to gf2 for 数学>=mc2 .and. 学校=ibj
    count to gf3 for 英语>=mc3 .and. 学校=ibj
    count to gf4 for 物理>=mc4 .and. 学校=ibj
    count to gf5 for 化学>=mc5 .and. 学校=ibj
    count to gf6 for 道法>=mc6 .and. 学校=ibj
    count to gf7 for 历史>=mc7 .and. 学校=ibj
    count to gf8 for 地理>=mc8 .and. 学校=ibj 
    count to gf9 for 生物>=mc9 .and. 学校=ibj 
    count to gf0 for 总成绩>=mc0 .and. 学校=ibj
	sele tjk
	append blank
	 repl 总人数  with x,语文 with gf1,数学 with gf2,英语 with gf3,总分上 with 名次1,物理 with gf4,化学  with gf5, ;
	 道法 with gf6,历史 with gf7,地理 with gf8,生物 with gf9,总成绩 with gf0,学校 with ibj
	?? ibj
endfor

* 统计全校双进线
sele bzk
go top
    count all to x 
    count to gf1 for 语文>=mc1 
    count to gf2 for 数学>=mc2 
    count to gf3 for 英语>=mc3 
    count to gf4 for 物理>=mc4 
    count to gf5 for 化学>=mc5 
    count to gf6 for 道法>=mc6 
    count to gf7 for 历史>=mc7 
    count to gf8 for 地理>=mc8 
    count to gf9 for 生物>=mc9 
    count to gf0 for 总成绩>=mc0
	sele tjk
	append blank
	 repl 总人数  with x,语文 with gf1,数学 with gf2,英语 with gf3,总分上 with 名次1,物理 with gf4,化学  with gf5, ;
	 道法 with gf6,历史 with gf7,地理 with gf8,生物 with gf9,总成绩 with gf0,学校 with '99'
	?? '————本名次段完成————'



    sele tjk
    appe blan
    sele mck
    skip
ENDD

******************************************************
******************************************************

*填充学籍数，计算进线率
*case中取第一行数据，通过公式=LEFT($O$1,17)&C2&MID($O$1,22,7)&$F2&RIGHT($O$1,14)转换获取文本
sele pjtjk
go top
do while .not.eof()
	sele tjk
	replace 总人数 with pjtjk.建档数 for 学校=pjtjk.代码 all
	sele  pjtjk
	skip
	
enddo

sele tjk
* 计算进线率
set filter to 总人数>1
replace all 总分率 with 总成绩/总人数*100
replace all 语文率 with 语文/总人数*100
replace all 数学率 with 数学/总人数*100
replace all 英语率 with 英语/总人数*100
replace all 物理率 with 物理/总人数*100
replace all 化学率 with 化学/总人数*100
replace all 道法率 with 道法/总人数*100
replace all 历史率 with 历史/总人数*100
replace all 地理率 with 地理/总人数*100
replace all 生物率 with 生物/总人数*100
set filter to
*更新学校名
replace all 校名 with "一初" for 学校="01"+space(6)
replace all 校名 with "二初" for 学校="02"+space(6)
replace all 校名 with "三初" for 学校="03"+space(6)
replace all 校名 with "四初" for 学校="04"+space(6)
replace all 校名 with "周庄" for 学校="05"+space(6)
replace all 校名 with "店头" for 学校="06"+space(6)
replace all 校名 with "石门" for 学校="07"+space(6)
replace all 校名 with "古龙" for 学校="08"+space(6)
replace all 校名 with "大兴" for 学校="09"+space(6)
replace all 校名 with "蛟龙" for 学校="10"+space(6)
replace all 校名 with "东盘" for 学校="11"+space(6)
replace all 校名 with "玉山" for 学校="12"+space(6)
replace all 校名 with "青云" for 学校="14"+space(6)
replace all 校名 with "白旄" for 学校="15"+space(6)
replace all 校名 with "五初" for 学校="16"+space(6)
replace all 校名 with "南古" for 学校="17"+space(6)
replace all 校名 with "曹庄" for 学校="18"+space(6)
replace all 校名 with "新星" for 学校="19"+space(6)
replace all 校名 with "英才" for 学校="20"+space(6)
replace all 校名 with "兴华" for 学校="21"+space(6)
replace all 校名 with "北城" for 学校="22"+space(6)

replace all 校名 with "全县" for 学校="99"+space(6)

dele all for 学校="13"
pack
*导出文件

sele tjk
do case
	case nj=700
	copy to 七年级名次人数.xls type xls ;
		fields 学校,总分上,总人数,总成绩,语文,数学,英语,道法,历史,地理,生物, ;
		总分率,语文率,数学率,英语率,道法率,历史率,地理率,生物率,校名
	case nj=800
	copy to 八年级名次人数.xls type xls ;
		fields 学校,总分上,总人数,总成绩,语文,数学,英语,物理,道法,历史,地理,生物, ;
		总分率,语文率,数学率,英语率,物理率,道法率,历史率,地理率,生物率,校名
	case nj=900
	copy to 九年级名次人数.xls type xls	;
		fields 学校,总分上,总人数,总成绩,语文,数学,英语,物理,化学,道法,历史, ;
		总分率,语文率,数学率,英语率,物理率,化学率,道法率,历史率,校名
endcase
clear
sele tjk
use
sele mck
use

sele 1
use


***************************平均分计算***************
* 统计各校平均
sele bzk
sort to pjbzk on 学校/a,总成绩/d  &&平均标准库
use pjbzk in 0
sele pjtjk
go top
do while .not.eof() &&遍历pjtjk,填最高分，平均分95，98
	sele pjbzk
	if pjtjk.单位="全县"
		set filter to
		go top
		replace pjtjk.最高分 with pjbzk.总成绩
		sum 总成绩 to pjf95 for 年级排名 <= pjtjk.人数95
		sum 总成绩 to pjf98 for 年级排名 <= pjtjk.人数98
	else
		set filter to 学校=pjtjk.代码
		go top
		replace pjtjk.最高分 with pjbzk.总成绩
		gfrec=recno()
		replace all 学校排名 with recno()-gfrec+1
		sum 总成绩 to pjf95 for 学校排名 <= pjtjk.人数95
		sum 总成绩 to pjf98 for 学校排名 <= pjtjk.人数98
						do paixu with "语文","语文名次"
						do paixu with "数学","数学名次"
						do paixu with "英语","英语名次"
						do paixu with "物理","物理名次"
						do paixu with "化学","化学名次"
						do paixu with "道法","道法名次"
						do paixu with "历史","历史名次"
						do paixu with "地理","地理名次"
						do paixu with "生物","生物名次"
						do paixu with "总成绩","学校排名"
						kprs=pjtjk.人数98
						sum 语文 for 语文名次<=kprs to mc1
						sum 数学 for 数学名次<=kprs to mc2 
						sum 英语 for 英语名次<=kprs to mc3 
						sum 物理 for 物理名次<=kprs to mc4 
						sum 化学 for 化学名次<=kprs to mc5 
						sum 道法 for 道法名次<=kprs to mc6
						sum 历史 for 历史名次<=kprs to mc7
						sum 地理 for 地理名次<=kprs to mc8
						sum 生物 for 生物名次<=kprs to mc9
						sum 总成绩 for 学校排名<=kprs  to mc0
				sele pjtjk
				      repl 语文 with mc1/kprs ,数学 with mc2/kprs ,英语 with mc3/kprs ,物理 with mc4/kprs ,化学  with mc5/kprs , ;
				      道法 with mc6/kprs ,历史 with mc7/kprs ,地理 with mc8/kprs ,生物 with mc9/kprs 
											
					

	endif
	sele pjtjk
	repl 平均分95 with pjf95/人数95 
	repl 平均分98 with pjf98/人数98 	
	? 单位,最高分,平均分95,平均分98
		skip
enddo
sele pjtjk
set filter to 单位<>"全县"
index on 平均分95 tag pjpj1 descending	
go top
	  j=1
	  DO WHILE NOT EOF()
		  replace 平均95名次 with j
		  j=j+1
		  skip
	  ENDDO
index on 平均分98 tag pjpj2 descending	
go top
	  j=1
	  DO WHILE NOT EOF()
		  replace 平均98名次 with j
		  j=j+1
		  skip
	  ENDDO

   set filter to 	
index on 代码 tag dm ascending	   
do case
	case nj=700
	** 需添加功能：alter table pjtjk rename 平均分98 to 平均分98；；；；人数98	平均分98	平均98名次

	copy to 七年级总分分析.xls type xls
	case nj=800
	copy to 八年级总分分析.xls type xls
	case nj=900
	copy to 九年级总分分析.xls type xls
endcase
sele pjbzk
set filter to


**************************************
do case
	case nj=700
	copy to 七年级全县成绩.xls type xls fields 姓名,考号,班级,语文,数学,英语,道法,历史,地理,生物,总成绩,学校排名,年级排名,学校
	case nj=800
	copy to 八年级全县成绩.xls type xls fields 姓名,考号,班级,语文,数学,英语,物理,道法,历史,地理,生物,总成绩,学校排名,年级排名,学校
	case nj=900
	copy to 九年级全县成绩.xls type xls fields 姓名,考号,班级,语文,数学,英语,物理,化学,道法,历史,总成绩,学校排名,年级排名,学校
endcase
	? '本次分析全部完成，生成文件在e:\cjfx下，X年级全县成绩,X年级总分分析,X年级名次人数共三个xls文件。'
*	? '若分析的是七年级，把七年级总分分析.xls中的90换成98即可'      &&曾经是90，95和95，98，21年1月统一为只算98，此条无用。
sele bzk
use	
sele pjtjk
use
sele pjbzk
use
erase bzk.dbf
erase pjtjk.dbf
erase pjbzk.dbf
erase mck.dbf
erase tjk.dbf
erase x1.dbf
erase xx.dbf

SET TALK ON
***************************
*	过程：排序
*	过程调用：do paixu with 排序字段,更新名次的字段 
***************************
procedure paixu
	parameters pxzd,gxzd &&接受变量，排序字段，更新字段
	
	index on &pxzd tag pxpx descending
	go top
	j=1
	do while not eof()
		replace &gxzd with j
		j=j+1
		skip
	enddo
	delete tag pxpx
return &&可省略
***************************
***************************
*   1、程序功能：
*   分析各校10，50，100，200，500，700，1000，1500，2000，2500，3000，3500，4000，4500名进线率，
*   根据程序内的各校建档数，七年级分析前95%，98%的平均分，八、九年级分析前90%，95%的平均分。
*   2、数据库格式：
*   姓名 c(8),考号 c(9),班级 c(8), 学科均为n(8)_名称为：语文 ,数学 ,英语 ,物理 ,化学 ,道法 ,历史 ,地理 ,生物 
*   以上字段为必须，其它字段程序用不到。注意“道法”，没有的学科可以不用管。
*   3、需要提前更改的内容：
*   使用vfp打开"全县成绩分析.prg"，更新各校的建档数。
*   4、输出文件
*   e:\cjfx\x年级全县成绩.xls
*   e:\cjfx\x年级总分分析.xls
*   5、操作方法
*   确定数据库格式准确。
*   双击运行"全县成绩分析.prg"。
*   在跳出的打开文件对话框中找到要分析的dbf文件。
*   确定第一行有正确的考号。
