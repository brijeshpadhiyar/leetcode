class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    final nums = <int>[...nums1, ...nums2]..sort();
    int middle = nums.length ~/ 2;
    if (middle == nums.length / 2) {
      int x = middle;
      int y = middle - 1;
      return (nums[x] + nums[y]) / 2;
    } else {
      int x = middle;
      return nums[x].toDouble();
    }
  }
}

void main() {
  List<int> nums1 = [1, 2, 3];
  List<int> nums2 = [4, 5, 6];
  print(Solution().findMedianSortedArrays(nums1, nums2)); // Output: 2.5
}
