

CONAN_PROFILE=$(PWD)/musl.profile

hello:
	-mkdir build
	cd build; conan install .. --profile $(CONAN_PROFILE)  --build missing
	cd build; conan build ..
	strip build/bin/hello
	cp build/bin/hello .
