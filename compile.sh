mkdir -p bin
emcc -s WASM=1 -O3 -s TOTAL_MEMORY=268435456 -D__linux__ \
  march.cc objectize.cc \
  --pre-js prefix.js --post-js postfix.js \
  -o bin/mc.js
cat prefix2.js bin/mc.js >bin/mc2.js

#  util.cc FastNoise.cpp noise.cc cachedNoise.cc compose.cc march.cc tssl.cc light.cc heightfield.cc flod.cc noiser.cc cull.cc objectize.cc \
#  --pre-js prefix.js --post-js postfix.js \
#  -o bin/objectize.js