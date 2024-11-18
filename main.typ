#import "template.typ": *
#import "bxbibwrite.typ":*

#show: doc => conf(
  title: "情報システム概論",
  date: "2024年11月x日", 
  student-id: "kxxxxx", 
  name: "xxxx",  
  doc,
)

= 知的財産権関連法規
$lrm$ こんにちは#super[[@1]]

= セキュリティ関連法規
= 労働\/取引関連法規


#show heading.where(level: 1): it => {
  set text(weight: "bold", size: 16pt, font: "Hiragino Mincho ProN")
  text()[
    #v(20pt)
    #it.body \
    #v(10pt)
  ]
}
#set par(first-line-indent: 0pt)

#bibliography-list(
  title: "4. 参考文献", // 既定値は"Bibliography"
)[
#bib-item(<1>)[U研⾼エネルギー天⽂学グループ 真空とは(https://www.u.phys.nagoya-u.ac.jp/r_e/r_e_s.html) 閲覧日 2024/11/10]
#bib-item(<2>)[尾池⼯業株式会社 真空蒸着とは (https://www.oike-kogyo.co.jp/research/column/vacuum_dep/)
閲覧⽇ 2024/11/10]
]