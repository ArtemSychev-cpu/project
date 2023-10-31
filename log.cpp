#include "log.h"
#include <iostream>

Log::Log(std::string filename) {
	_fileStream = std::fstream(filename, std::ios::app);
	if (!_fileStream.is_open()) {
		std::cout << "Could not open file " << filename << " !" << '\n';
	}
}
Log::~Log() {
	_fileStream.close();
}

bool Log::writoToFile(std::string text)
{
	_mutex.lock();
	_fileStream << text;
	_mutex.unlock();
	return false;
}

std::string Log::readFromFileOneLine()
{
	std::string result;
    _mutex.lock();
	std::getline(_fileStream, result);
    _mutex.unlock();
	return result;
}
