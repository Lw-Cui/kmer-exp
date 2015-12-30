#include <cstdio>
#include <fstream>
#include <map>
#include <vector>
#include <string>
#include <iostream>
using namespace std;
int main(int argc, char *argv[]) {
	ifstream fin1(argv[1]), fin2(argv[2]);
	map<string, int> kmer;
	vector<string> output;
	string mer;
	int num;

	while (fin1) {
		fin1 >> mer >> num;
		kmer[mer] += num;
	}
	while (fin2) {
		fin2 >> mer >> num;
		kmer[mer] += num;
	}

	for (map<string,int>::iterator p = kmer.begin();
			p != kmer.end(); p++)
		if (p->second > 20)
			output.push_back(p->first);

	cout << output.size() << endl;
	for (vector<string>::iterator p = output.begin();
			p != output.end(); p++)
		cout << *p << endl;

	return 0;
}
