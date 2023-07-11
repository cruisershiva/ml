import pandas as pd
Import math
If = pd.read_csv(id3.csv') print("\n Input Data Set is: \n", df)
== df.keys()[-1]
print('Target Attribute is: ', t)
attribute_names list (df.keys()) attribute_names.remove(t)
print('Predicting Attributes: ', attribute_names)
def entropy (probs):
return sum( [-prob math.log(prob, 2) for prob in probs])
def entropy_of_list (ls, value):
from collections import Counter
cnt = Counter (x for x in 1s)
total_instances = len(1s)
print('Target attribute class count (Yes/No)=', dict(cnt)) probs = [x / total_instances for x in cnt.values()]
print("Total no of instances/records associated with {0} is: {1}".format(value, total_instances
return entropy(probs)
def information_gain (df, split_attribute, target_attribute, battr):
print("\n\n--Information Gain Calculation of ", split_attribute, "--------")
df_split = df.groupby(split_attribute)
worm=[]
for gname, group in df_split:
print("Grouped Attribute Values \n',group)
glist.append(gname)
)
nobs = len(df.index)
df_agg1=df_split.agg({target_attribute: lambda x:entropy_of_list(x, glist.pop()})})
df_agg2=df_split.agg({target_attribute : lambda x:len(x)/nobs})
df_agg1.columns=['Entropy']
df_agg2.columns=['Proportion']
new_entropy=sum( df_agg1['Entropy'] df_agg2['Proportion'])
if battr !='S':
old_entropy = entropy_of_list(df[target_attribute], 'S-'+df.iloc[0][df.columns.get_loc(battr)])
else:
old_entropy entropy_of_list(df[target_attribute], battr) return old entropy - new entropy
def id3(df, target_attribute, attribute_names, default_class=None, default_attr= 'S'):
from collections import Counter cnt = Counter (x for x in df[target_attribute
]) # class of YES/NO
if len(cnt) == 1:
return next(iter(cnt))
elif df.empty or (not attribute_names):
return default_class
else:
default_class = max(cnt.keys()) gainz=[] ig= information_gain (df, attr, target_attribute, default_attr)
for attr in attribute_names:
gainz.append(ig) print('Information gain of, attr, is: ',ig)
index_of_max= gainz. index (max(gainz))
best_attr= attribute_names[index_of_max] print("\nAttribute with the maximum gain is: ", best_attr)
tree (best_attr:{}}
remaining_attribute_names =[i for i in attribute_names if i != best_attr]
for attr_val, data_subset in df.groupby(best_attr): subtree= id3 (data_subset, target_attribute, remaining_attribute_names, default_class, best_attr)
tree[best_attr][attr_val] = subtree
return tree
from pprint import pprint
tree id3(df,t, attribute_names)
print("\nThe Resultant Decision Tree is: ")
print(tree)