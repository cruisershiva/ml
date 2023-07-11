import csv
with open('enjoysport.csv', 'r') as f: reader = csv.reader (f)
data list (reader)
#Training data from CSV file
print("Training data\n") for row in data:
print(row)
print("-
attr_len-len(data[0])-1
#initialize Specific and General Hypothesis
S['0'] attr_len G= [''] attr_len
# altered G
temp=[]
print("The Hypothesis are\n") print("S=",S)
print("G=",G)
print("- for row in data:
if row[-1] =='yes':
j = 0 for col in row:
if col = 'yes':
if cols[j] and [j]
s[j] = col elif col = S[j] and [j] != '0':
jj+1
for i in range(0, attr_len):
for k in temp: if k[j] = s[j] and k[j] != '?':
temp.remove(k)
if row[-1]=='no':
for col in row:
if col = 'no':
if col! S[j] and [j] = '?': G[j]=s[j]
temp.append(G)
G=[?] attr_len
--").
print("S=",S)
if len(temp)==0:
else:
--')
print("G=",G) print("G=", temp) print('-