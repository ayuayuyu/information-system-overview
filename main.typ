#import "template.typ": *

#show: doc => conf(
  title: "情報システム概論",
  date: "2024年10月31日", 
  student-id: "k23099", 
  name: "花田歩夢",  
  doc,
)

= 知的財産権関連法規
$lrm$ 

= セキュリティ関連法規
= 労働\/取引関連法規


#show heading.where(level: 1): it => {
  set text(weight: "bold", size: 16pt)
  text()[
    #v(20pt)
    #it.doc \
    #v(10pt)
  ]
}
#set par(first-line-indent: 0pt)
