import structs/ArrayList
import FNumber
import Vector

main: func {
	n1 := FNumber new(1,3)
	n2 := FNumber new(3)
	n3 := n1 * n2
	
	v1 := TupleN new(3)
	v1 = [n1, n2, n3]
	/*v2 := v1 * 5
	v3 := v1 / 4
	
	v1 print(); println()
	v2 print(); println()	
	v3 print(); println()
	*/
}
