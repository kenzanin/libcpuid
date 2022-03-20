download from
http://www.etallen.com/cpuid.html

- modified to only print PSN Processor Serial Number
- add cmake project


build:

clone the repo

git clone --depth=1 https://github.com/kenzanin/libcpuid

for cmake build
```sh
mkdir build
cd build
cmake ../
make
```

launch:

in build dir
```sh
./main
XXXX-XXXX-XXXX-XXXX-XXXX-XXXX
```

notes:

- in cpuid.c the __main function is not used feel free to put the main function in
comment block to remove warning unused function in compiler message.

- dont forget to free the result/return

```cpp
int main(void) {
  char *test = GetCpuSn(); // test variable is malloc'ed inside GetCpuSn function
  std::cout << test << "\n";
  free(test);              // so don't forget to free it.
  return 0;
}
```

build using build.sh:

```sh
chmod a+x build.sh
bash ./build.sh
```