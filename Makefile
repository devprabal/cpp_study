############ MAKE FILE ##############


DEBUG = 1
ENABLE_WARNINGS = 1
WARNINGS_AS_ERRORS = 0


SOURCE_DIR = cpp_study
INCLUDE_DIR =
BUILD_DIR =


ifeq($(ENABLE_WARNINGS),1)
CXX_WARNINGS = -Wall -Wextra -Wepandtic
else 
CXX_WARNINGS = 
endif

ifeq($(WARNINGS_AS_ERRORS),1)
CXX_WARNINGS += -Werror 
endif 


CXX_STANDARD = C++17
CXX = g++
CXXFLAGS= $(CXX_WARNINGS) -std = $(CXX_STANDARD)
#CPPFLAGS = -I $(INCLUDE_DIR)
#LDFLAGS= -lmath


ifeq($(DEBUG),1)
CXXFLAGS += -G -O0
EXECUTABLE_NAME = mainDebug
else
CXXFLAGS += -o3
EXECUTABLE_NAME = mainRelease
endif


COMPILER_CALL = $(CXX) $(CXXFLAGS) $(CPPFLAGS)

CXX_SOURCES = $(wildcard $(SOURCE_DIR)/*.cpp)
#CXX_OBJECTS = $(patsubst $(SOURCE_DIR)/%.cpp, $(BUILD_DIR)%.o, $(CXX_SOURCES))
CXX_OBJECTS = $(patsubst $(SOURCE_DIR)/%.cpp, $(SOURCE_DIR)%.o, $(CXX_SOURCES))


## TARGETs ##

create:
	mkdir build

build: create $(CXX_OBJECTS) $(LDFLAGS) -o $(SOURCE_DIR)/$(EXECUTABLE_NAME))
	$(COMPILER_CALL) $(CXX_OBJECTS) $(LDFLAGS) -o $(SOURCE_DIR)/$(EXECUTABLE_NAME))

execute:
./$(SOURCE_DIR)/$(EXECUTABLE_NAME)

clean:
	rm -f $(SOURCE_DIR)/*.o
	rm -f $(SOURCE_DIR)/$(EXECUTABLE_NAME)



## PATTERNS ##

$(SOURCE_DIR)/%.o: $(SOURCE_DIR)/%.cpp
	$(COMPILER_CALL) -c $< -o $@


## PHONY ##

.PHONY: create build execute clean