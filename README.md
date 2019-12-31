### 介绍

在openresty上使用国密算法SM4

在使用[源参考地址](https://github.com/toruneko/lua-resty-sm4)过程中，发现最后得出的结果似乎不是预期想要的，故对最后加密encrype和解密decrypt方法中做了修改，另源仓库已经存档 没办法提issues和pr了

### 快速使用

> 实际使用过程中请注意是否将对应文件放在resty目录下，若不是 请修改require为对应导入的包路径

```lua
local resty_sm4 = require "resty.sm4"
local key = '1234567890abcdef'
local text = 'test'
local sm4 = resty_sm4:new(key)
# 加密
local en_text = sm4:encrypt(text)
print(en_text)
#解密
local de_text = sm4:decrypt(text)
print(en_text)
```

### License

```
MIT License

Copyright (c) 2019 hongjinpin

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

