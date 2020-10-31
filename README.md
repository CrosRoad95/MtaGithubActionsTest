Jak to działa?

Ze względów na to że warto byłoby żeby testowany skrypt posiadał admina, zmień, albo nie wgrywaj panelu admina ( zasobu "admin" ) na githuba ( możliwe że w przyszłości to poprawię )

1. sklonuj to repozytorium w folderze powyżej "resources".
2. w pliku resources/admin/s.lua
funkcja
```lua
function test()
    local a = createElement("test")
    setElementData(a, "a", "a")
    assert(getElementData(a, "a") == "b")
    
    return 1
end
```
zawiera dane które będą testowane, jeżeli cokolwiek w tej funkcji wyrzuci błąd, test nie zostanie zaliczony.
W tym przypadku "a" == "b" to fałsz, czyli test nie przejdzie.

po każdym commicie test jest odpalany, pobierana najnowsza wersja serwera mta i uruchamiany jest skrypt "admin", i inne domyślne zasoby
