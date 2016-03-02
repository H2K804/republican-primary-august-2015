
get_txt = gsub("@\\w+", "", some_txt)
get_txt = gsub("[[:punct:]]", "", some_txt)
get_txt = gsub("[[:digit:]]", "", some_txt)
get_txt = gsub("http\\w+", "", some_txt)
get_txt = gsub("[ \t]{2,}", "", some_txt)
get_txt = gsub("^\\s+|\\s+$", "", some_txt)
 

try.error = function(x)
{
# create missing value
y = NA
# tryCatch error
try_error = tryCatch(tolower(x), error=function(e) e)
# if not an error
if (!inherits(try_error, "error"))
y = tolower(x)
# result
return(y)
}

get_txt = sapply(get_txt, try.error)
 
get_txt = get_txt[!is.na(get_txt)]
names(get_txt) = NULL