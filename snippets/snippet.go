package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var reader *bufio.Reader
var writer *bufio.Writer

func printf(f string, a ...interface{}) { fmt.Fprintf(writer, f, a...) }
func scanf(f string, a ...interface{})  { fmt.Fscanf(reader, f, a...) }
func print(a ...interface{})            { fmt.Fprint(writer, a...) }
func scan(a ...interface{})             { fmt.Fscan(reader, a...) }

func solve() {
	var tc int
	scan(&tc)

	for tc != 0 {
		var query string
		scan(&query)

		var sb strings.Builder
		sb.WriteString(query[:2])
		for i := 2; i < len(query); i += 2 {
			sb.WriteByte(query[i+1])
		}
		printf("%s\n", sb.String())
		tc--
	}
}

func main() {
	//	os.Stdin, _ = os.OpenFile("input.txt", os.O_RDONLY|os.O_CREATE, 0666)
	//	os.Stdout, _ = os.OpenFile("output.txt", os.O_WRONLY|os.O_CREATE|os.O_TRUNC, 0666)
	reader = bufio.NewReader(os.Stdin)
	writer = bufio.NewWriter(os.Stdout)
	defer writer.Flush()

	solve()
}
