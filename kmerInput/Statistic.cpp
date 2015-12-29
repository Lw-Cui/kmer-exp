#include <cstring>
#include <map>
#include <cstdio>
using namespace std;
int main() {
	map<int, int> count;

	int num;
	while (scanf("%*s%d", &num) != EOF)
		count[num]++;

	for (map<int, int>::iterator p = count.begin();
			p != count.end(); p++)
		printf("%5d: %10d\n", p->first, p->second);
	return 0;
}
