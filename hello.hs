main = putStrLn myHtml

myHtml = makeHtml "Hewwo? O.O" "Hewwo, wurld!!! OwO" 

makeHtml title content = html_ $ head_ (title_ title) <> body_ content

html_ content = "<html>" <> content <> "</html>"
body_ content = "<body>" <> content <> "</body>"
head_ content = "<head>" <> content <> "</head>"
title_ t = "<title>" <> t <> "</title>"