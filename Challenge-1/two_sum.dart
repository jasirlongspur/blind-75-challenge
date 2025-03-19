class Solution {
  twoSum(List<int> array, int target) {
    Map<int, int> numToIndex = {};
    for (var i = 0; i < array.length; i++) {
      int compliment = target - array[i];
      if (numToIndex.containsKey(compliment)) {
        return [numToIndex[compliment], i];
      }
      numToIndex[array[i]] = i;
    }
  }
}
