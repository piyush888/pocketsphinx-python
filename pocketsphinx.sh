brew reinstall swig
git clone --recursive https://github.com/piyush888/pocketsphinx-python.git
cd pocketsphinx-python
sed -i.bak 's/\#include \<al.h\>/\#include \<OpenAL\/al.h\>/' deps/sphinxbase/src/libsphinxad/ad_openal.c
sed -i.bak 's/\#include \<alc.h\>/\#include \<OpenAL\/alc.h\>/' deps/sphinxbase/src/libsphinxad/ad_openal.c
python setup.py install