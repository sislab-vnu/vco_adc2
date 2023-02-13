import numpy as np
# phase = np.genfromtxt(result.txt, dtype=<class 'double'>, delimiter=" ")
with open("result.txt", "r") as txt_file:
        input_data = [list(map(str, line.split())) for line in txt_file];
txt_file.close()
clk = [row[0] for row in input_data]
clk = list(map(int, clk))
output_data = []
for i in range(0, len(clk)-1):
	if clk[i] > clk[i+1]:
		output_data.append(input_data[i])
np.savetxt("data.txt", output_data, delimiter=" ", newline = "\n", fmt="%s")
