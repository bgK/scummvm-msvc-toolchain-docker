FROM debian:stretch-slim

RUN sed 's/^deb \(.*\)/deb-src \1/' /etc/apt/sources.list \
		> /etc/apt/sources.list.d/debsrc.list && \
	apt-get update && apt-get install -y \
		apt-transport-https \
		bison \
		git \
		gnupg \
		unzip \
		wget \
		winbind && \
	apt-get build-dep -y \
		msitools

RUN git clone git://git.gnome.org/msitools /msitools && \
	cd /msitools && \
	./autogen.sh && \
	make -C include && \
	make -C libmsi && \
	make msiextract

RUN echo "deb https://dl.winehq.org/wine-builds/debian/ stretch main" \
		>> /etc/apt/sources.list && \
	wget -qO - https://dl.winehq.org/wine-builds/Release.key | apt-key add - && \
	dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y \
		winehq-devel

ADD build-toolchain.sh /msvc-toolchain/
WORKDIR /msvc-toolchain/
RUN ./build-toolchain.sh
ADD sdl2-config.cmake /msvc-toolchain/scummvm-libs/

env DEV_HOME="Z:\msvc-toolchain" \
    WINEDEBUG="-all"
env CMAKE_BIN="$DEV_HOME\cmake\bin" \
    VC_TOOLS_PATH="$DEV_HOME\visualcpptools" \
    VC_TOOLS_BIN="$DEV_HOME\visualcpptools\bin\Hostx64\x64" \
    VC_TOOLS_INCLUDE="$DEV_HOME\visualcpptools\include" \
    VC_TOOLS_LIB="$DEV_HOME\visualcpptools\lib\x64" \
    WIN_SDK_BIN="$DEV_HOME\winsdk\bin\x64" \
    WIN_SDK_SHARED_INCLUDE="$DEV_HOME\winsdk\include\shared" \
    WIN_SDK_UM_INCLUDE="$DEV_HOME\winsdk\include\um" \
    WIN_SDK_UM_LIB="$DEV_HOME\winsdk\lib\um\x64" \
    UCRT_INCLUDE="$DEV_HOME\winsdk\include\ucrt" \
    UCRT_LIB="$DEV_HOME\winsdk\lib\ucrt\x64" \
    SCUMMVM_INCLUDE="$DEV_HOME\scummvm-libs\include" \
    SCUMMVM_LIB="$DEV_HOME\scummvm-libs\lib\x64\Release"
env INCLUDE="$VC_TOOLS_INCLUDE;$UCRT_INCLUDE;$WIN_SDK_SHARED_INCLUDE;$WIN_SDK_UM_INCLUDE;$SCUMMVM_INCLUDE" \
    LIBPATH="$VC_TOOLS_LIB;$UCRT_LIB;$WIN_SDK_UM_LIB;$SCUMMVM_LIB" \
    LIB="$VC_TOOLS_LIB;$UCRT_LIB;$WIN_SDK_UM_LIB;$SCUMMVM_LIB" \
    WINEPATH="$CMAKE_BIN;$VC_TOOLS_BIN;$WIN_SDK_BIN"

