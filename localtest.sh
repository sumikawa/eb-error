#!/bin/bash
md5sum=$(curl -s http://localhost:4567/diary/2015/1023-us/img_5388.jpg | md5)
if [ $md5sum == "c0fa8623b4ec9d08883cad0d49a65af1" ]; then
  echo "Test 1: OK"
else
  echo "Test 1: NG $md5sum"
fi

md5sum=$(curl -s http://localhost:4567/diary/2015/1023-us/idx/img_5388.jpg | md5)
if [ $md5sum == "f33cf48f5282a4d1df4413808cd0e170" ]; then
  echo "Test 2: OK"
else
  echo "Test 2: NG $md5sum"
fi

md5sum=$(curl -s http://localhost:4567/diary/2015/1023-us/idx/img_5388.idx.jpg | md5)
if [ $md5sum == "f33cf48f5282a4d1df4413808cd0e170" ]; then
  echo "Test 3: OK"
else
  echo "Test 3: NG $md5sum"
fi

md5sum=$(curl -s http://localhost:4567/diary/2015/1023-us/retina/img_5388.jpg | md5)
if [ $md5sum == "3bdad45e6f39bde9947e67c0df0660ea" ]; then
  echo "Test 4: OK"
else
  echo "Test 4: NG $md5sum"
fi
