#ifndef SHARED1_H__
#define SHARED1_H__

#ifdef _WIN32
    #ifdef shared1_EXPORTS
        #define SHARED1_EXPORT __declspec(dllexport)
    #else
        #define SHARED1_EXPORT __declspec(dllimport)
    #endif
#else
    #define SHARED1_EXPORT
#endif

extern "C" void SHARED1_EXPORT f();

class SHARED1_EXPORT X {
public:
  X();
  void mX();
};

#endif
