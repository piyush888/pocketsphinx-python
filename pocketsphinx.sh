brew reinstall swig
git clone --recursive https://github.com/piyush888/pocketsphinx-python.git
cd pocketsphinx-python
sed -i.bak 's/\b#include <al.h>\b/\b#include <OpenAL/al.h>\b/' deps/sphinxbase/src/libsphinxad/ad_openal.c
sed -i.bak 's/\b#include <alc.h>\b/\b#include <OpenAL/alc.h>\b/' deps/sphinxbase/src/libsphinxad/ad_openal.c
python setup.py install