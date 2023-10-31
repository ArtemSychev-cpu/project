#pragma once
#include <string>
#include <fstream>
#include <mutex>

class Log
{
private:
	std::fstream _fileStream;
    std::mutex _mutex;

public:
    Log(std::string filename);
    ~Log();

	bool writoToFile(std::string text);
	std::string readFromFileOneLine();
};
