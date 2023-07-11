import csv
with open('enjoysport.csv', 'r') as f:
reader csv.reader (f)
data = list(reader)
#convert data into list
#Training data from CSV file print("Training data\n")
for row in data:
print(row)
attr_len-len (data[0])-1 h = ['']*attr_len
# Initialize h to the most specif
print("h=",h)
print("\nThe Hypothesis are\n")
for row in data:
if row[-1]=='yes':
j=0
#For each positive training
for col in row:
h[j] = col
elif col=h[j] and h[j] != '0';
#For each attribute constrai if col != 'yes': #replace a, in h by the next if col = h[j] and h[j] == '0':
h[j]='?'
jj+1
print("h",k," ",h) #print all Hypothesis
k=k+1
print("\nMaximally Specific Hypothesis: \n", "h", k-1,"=", h)