package main

import (
	"fmt"
	"mymodule/ba"
	"mymodule/qu"
)

func main(){
	fmt.Println(foo())
	fmt.Println(ba.Bar())
	fmt.Println(ba.Baz())
	fmt.Println(qu.Qux())
	fmt.Println(qu.Quux())
}
