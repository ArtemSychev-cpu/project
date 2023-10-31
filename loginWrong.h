#pragma once
#include <exception>

class loginWrong : public std::exception
{
public:
	virtual const char* what() const noexcept override;
};
