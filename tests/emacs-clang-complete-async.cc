/*
 * This source code is test for emacs-clang-complete-async.
 * Example:: input std:: below auto complete
 */
#include <vector>
#include <algorithm>
#include <numeric>

int main(int argc, char *argv[]) {
  std::vector<int> vec;
  // std::<ac>
  std::transform(argv + 1, argv + argc, std::back_inserter(vec), atoi);
  return 0;
}
