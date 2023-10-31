#pragma once
#include <exception>

class passwordWrong : public std::exception
{
public:
	virtual const char* what() const noexcept override;
};
