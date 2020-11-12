n = 2
flops = 0
for i in range (1,n+1):
	for j in range (1,i+1):
		for k in range (j, n+1):
			flops +=2
print(flops)

