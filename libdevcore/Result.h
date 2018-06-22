/*
	This file is part of solidity.

	solidity is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	solidity is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with solidity.  If not, see <http://www.gnu.org/licenses/>.
*/
#pragma once

#include <string>

namespace dev {

/// Simple generic result that holds a value and an optional error message.
///
/// Result<bool> check()
/// {
///		if (false)
///			return Result<bool>(false, "Error message.")
///		return true;
/// }
///
template <class T>
class Result
{
public:
	Result(T _value): m_value(std::move(_value)) {}
	Result(T _value, std::string _err): m_value(std::move(_value)), m_err(std::move(_err)) {}

	operator bool() const { return m_value ? true : false; }

	T const& get() const { return m_value; }
	std::string const& error() const { return m_err; }

private:
	T m_value;
	std::string m_err;
};

}


