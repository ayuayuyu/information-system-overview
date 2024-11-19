#import "template.typ": *

#show: doc => conf(
  title: "情報システム概論",
  date: "2024年11月x日", 
  student-id: "kxxxxx", 
  name: "xxxx",  
  doc,
)

= 知的財産権関連法規
こんにちは#super[@膨張率] \
a

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

#bibliography(
  "refs.yml",
   title: "4. 参考文献", 
   style: "refs.csl"
)