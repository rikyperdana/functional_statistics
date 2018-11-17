sum = -> it.reduce (res, inc) -> res + inc
transpose = (arr) -> [to arr.0.length-1]map (i) ->
	[to arr.length-1]map (j) -> arr[j][i]
	mathMul = -> it.reduce (a, b) -> if a.0.length is b.length
		[to a.length-1]map (i) -> [to b.0.length-1]map (j) ->
			sum a[i]map (k, l) -> k * b[l][j]
