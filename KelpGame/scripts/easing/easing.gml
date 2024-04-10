// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EaseInBack(_inputvalue, _outputmin, _outputmax, _inputmax, _amount = 1.70158) {
	
_inputvalue /= _inputmax;
return _outputmax * _inputvalue * _inputvalue * ((_amount + 1) * _inputvalue - _amount) + _outputmin;
}