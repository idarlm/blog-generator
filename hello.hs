main = putStrLn $ render myHtml

myHtml = makeHtml "Hello" (append_ (h1_ "Hello") (p_ "Welcome to my website."))

-- Define newtypes that are backed by strings. 
-- These can not be used interchangably with other strings
newtype Html = Html String
newtype Structure = Structure String

-- Define type alias for Title. This can be used interchangably with other strings.
type Title = String

getStructureString :: Structure -> String
getStructureString (Structure str) = str

append_ :: Structure -> Structure -> Structure
append_ (Structure a) (Structure b) = Structure (a <> b)

render :: Html -> String
render html = 
    case html of
        Html str -> str

makeHtml :: Title -> Structure -> Html
makeHtml title (Structure content) = 
    Html (
        "<!DOCTYPE html>" <>
        el "html" (
            el "head"  (
                el "title" title
            ) <> 
            el "body" content
        )
    )

p_ :: String -> Structure
p_ = Structure . el "p"

h1_ :: String -> Structure
h1_ = Structure . el "h1"

el :: String -> String -> String
el tag content = "<" <> tag <> ">" <> content <> "</" <> tag <> ">"