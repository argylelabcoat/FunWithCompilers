import os
from conans import ConanFile, CMake


class HelloWorld(ConanFile):
    name = "helloworld"
    version = "1.0.0"
    settings = "os", "compiler", "build_type", "arch"
    generators = "cmake", "gcc", "txt"
    exports_sources = ("*.cpp", "CMakeLists.txt")

    options = {
        "shared": [True, False]
    }
    default_options = {
        "shared": False,
    }

    def build(self):
        if not 'CONAN_CMAKE_GENERATOR' in os.environ:
            os.environ['CONAN_CMAKE_GENERATOR'] = 'Ninja'
        cmake = CMake(self)
        cmake.configure()
        cmake.build()

    def package(self):
        self.copy("hello", dst="bin", keep_path=False)

