import structs/[Array,ArrayList]
import FNumber

TupleN: class {
	size: Int
	values: ArrayList<FNumber>
	init: func(=size) {
		printf("Created a vector of size 3\n")
		values = ArrayList<FNumber> new(size)
	}
	
	print: func {
		printf("(")
		for(i in 0..size - 1) {
			values[i] print()
			printf(" | ")
		}
		values[size - 1] print()
		printf(")")
	}
}


operator + (v1,v2: TupleN) -> TupleN {
	if(v1 size != v2 size) {
		Exception new("Trying to add vectors of different size!!!") throw()
	}
	ret := TupleN new(v1 size)
	for(i in 0..v1 size) {
		ret values[i] = v1 values[i] + v1 values[i]
	}
	return ret
}

operator - (v1,v2: TupleN) -> TupleN {
	if(v1 size != v2 size) {
		Exception new("Trying to add vectors of different size!!!") throw()
	}
	ret := TupleN new(v1 size)
	for(i in 0..v1 size) {
		ret values[i] = v1 values[i] - v1 values[i]
	}
	return ret
}

operator * (v1:TupleN, n: Int) -> TupleN {
	ret := TupleN new(v1 size)
	for(fn in v1 values) {
		ret values add(fn * n)
	}
	return ret
}

operator / (v1:TupleN, n: Int) -> TupleN {
	ret := TupleN new(v1 size)
	for(fn in v1 values) {
		ret values add(fn / n)
	}
	return ret
}

operator = (v1: TupleN, vals: Array<FNumber>) {
	printf("cacou\n")
}

/*
operator as (data: FNumber*, size: Int) -> TupleN {
	tn := TupleN new(size)
	for(i in 0..size) { tn values add(data[i]) }
}
*/




