# prologExamples
A personal intro to prolog (examples)

This is a set of pl examples I used on my AI course while at college.

## Clone

```shell
git clone https://github.com/xavrb/prologExamples
cd prologExamples

```


## Start
Every prolog code(*.pl) is executed in the same way(as a script):

```shell
$ swipl -s script.pl -t goal
```
Remember to add a "." at the end of every line while the program is running.


### Diet
diet.pl is a script that:
* Calculates the corporal mass index [!mci]{http://latex.codecogs.com/gif.latex?mci%20%3D%20%5Cfrac%7Bweight%7D%7B%7Bheight%7D%5E2%7D}
* Suggests a healthy diet bases on calorie count included in the knowledge base.

#### MCI
MCI diagnosis is calculated as follows (doesn't replace a health professional health):

| Women	|Men	|Diagnosis	| Recommendation	|
|-------|-------|---------------|-----------------------|
|<16	|<17	| Malnutrition	| Go to see a health professional!|
|17 to 20	|18 to 20	| Low weight	|Eat better!	|
|21 to 24	|21 to 25	| NORMAL	|Congrats!	|
|25 to 29	|26 to 30	| Overweight	|Diet, exercise!	|
|30 to 34	|31 to 35	| Obesity	|Medicines, globe or surgery!	|
|35 to 39	|36 to 40	| Very Obese	|Bariatric surgery!	|
|>40	|>40	| Morbidly obese!	|Urgent surgery	|













