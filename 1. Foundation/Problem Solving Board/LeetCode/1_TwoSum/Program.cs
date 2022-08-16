using _1_TwoSum;

int[] sampleA = new int[] { 2, 7, 11, 15 };
int[] sampleB = new int[] { 3,2,4 };
int[] sampleC = new int[] { 3,3 };
int[] sampleD = new int[] { 2,4,11,3 };

var result = Hashtable_Solution.TwoSum(sampleD, 6);


int indexA = result[0];
int indexB = result[1];


Console.WriteLine(indexA+" "+indexB);