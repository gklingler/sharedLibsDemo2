#ifndef SHARED2_H__
#define SHARED2_H__

#ifdef _WIN32
    #ifdef shared2_EXPORTS
        #define SHARED2_EXPORT __declspec(dllexport)
    #else
        #define SHARED2_EXPORT __declspec(dllimport)
    #endif
#else
    #define SHARED2_EXPORT
#endif

class SHARED2_EXPORT Y {
public:
  Y();
  void mY();
};

#endif
