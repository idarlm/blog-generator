main = putStrLn myHtml

myHtml = makeHtml "Hello" (h1_ "Hello" <> p_ "Welcome to my website")

makeHtml title content = html_ $ head_ (title_ title) <> body_ content

html_ = el "html"
body_ = el "body"
head_ = el "head"
title_ = el "title"

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

el :: String -> String -> String
el tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">" 