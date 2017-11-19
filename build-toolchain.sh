#!/bin/bash

set -e

function get_file_server_name() {
	wget -P dl --trust-server-names -nc $1
}

function get_file() {
	wget -P dl -nc $1
}

function get_vs_file() {
	get_file https://download.visualstudio.microsoft.com/download/pr/$1
}

function download() {
	# Build tools
	get_file https://cmake.org/files/v3.9/cmake-3.9.6-win64-x64.zip
	get_file https://github.com/ninja-build/ninja/releases/download/v1.8.2/ninja-win.zip

	# MSVC compiler
	get_file_server_name https://www.nuget.org/api/v2/package/VisualCppTools.Community.VS2017Layout/14.11.25547

	# Windows SDK
	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/Windows%20SDK%20Desktop%20Libs%20x64-x86_en-us.msi
	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/58314d0646d7e1a25e97c902166c3155.cab

	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/Windows%20SDK%20Desktop%20Libs%20x86-x86_en-us.msi
	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/53174a8154da07099db041b9caffeaee.cab

	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/Windows%20SDK%20Desktop%20Headers%20x86-x86_en-us.msi
	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/4fe4c8b88812f5339018c0eef95acdb9.cab
	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/2e876dd22fa5e6785f137e3422dd50ec.cab
	get_vs_file 100107594/d176ecb4240a304d1a2af2391e8965d4/07a57cdb41ba28cced14005f087267be.cab

	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/Universal%20CRT%20Headers%20Libraries%20and%20Sources-x86_en-us.msi
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/16ab2ea2187acffa6435e334796c8c89.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/2868a02217691d527e42fe0520627bfa.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/6ee7bbee8435130a869cf971694fd9e2.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/78fa3c824c2c48bd4a49ab5969adaaf7.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/7afc7b670accd8e3cc94cfffd516f5cb.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/80dcdb79b8a5960a384abe5a217a7e3a.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/96076045170fe5db6d5dcf14b6f6688e.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/a1e2a83aa8a71c48c742eeaff6e71928.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/b2f03f34ff83ec013b9e45c7cd8e8a73.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/beb5360d2daaa3167dea7ad16c28f996.cab
	get_vs_file 100110573/1a91d4d5ac358c110e7c874fd8c07239/f9ff50431335056fb4fbac05b8268204.cab

	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/Windows%20SDK%20for%20Windows%20Store%20Apps%20Tools-x86_en-us.msi
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/e3d1b35aecfccda1b4af6fe5988ac4be.cab
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/e072b3b3d3164e26b63338dce51862a7.cab
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/b82881a61b7477bd4eb5de2cd5037fe2.cab
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/69661e20556b3ca9456b946c2c881ddd.cab
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/68de71e3e2fb9941ee5b7c77500c0508.cab
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/61d57a7a82309cd161a854a6f4619e52.cab
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/2630bae9681db6a9f6722366f47d055c.cab
	get_vs_file 10768746/42f52c42fc1dc44606157b344286737c/15bc5316e373960d82abc253bceaa25d.cab

	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/Windows%20SDK%20for%20Windows%20Store%20Apps%20Libs-x86_en-us.msi
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/05047a45609f311645eebcac2739fc4c.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/0b2a4987421d95d0cb37640889aa9e9b.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/13d68b8a7b6678a368e2d13ff4027521.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/463ad1b0783ebda908fd6c16a4abfe93.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/5a22e5cde814b041749fb271547f4dd5.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/ba60f891debd633ae9c26e1372703e3c.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/e10768bb6e9d0ea730280336b697da66.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/f9b24c8280986c0683fbceca5326d806.cab

	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/Windows%20SDK%20for%20Windows%20Store%20Apps%20Headers-x86_en-us.msi
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/c1c7e442409c0adbf81ae43aa0e4351f.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/8125ee239710f33ea485965f76fae646.cab
	get_vs_file 100120735/59fd0bbd7af55837187bbf971d485bec/766c0ffd568bbb31bf7fb6793383e24a.cab

	# ScummVM third party dependencies
	get_file https://www.scummvm.org/frs/build/scummvm_libs_2015.zip
}

function extract_msi() {
	mkdir -p $1
	/msitools/msiextract "$2" -C "$1"
}

function extract() {
	rm -rf extracted/

	# Build tools
	unzip dl/cmake-3.9.6-win64-x64.zip -d extracted/
	unzip dl/ninja-win.zip -d extracted/

	# MSVC compiler
	unzip dl/visualcpptools.community.vs2017layout.14.11.25547.nupkg -d extracted/visualcpptools

	# Windows SDK
	mkdir -p extracted/sdk
	extract_msi extracted/sdk "dl/Windows SDK Desktop Headers x86-x86_en-us.msi"
	extract_msi extracted/sdk "dl/Windows SDK Desktop Libs x64-x86_en-us.msi"
	extract_msi extracted/sdk "dl/Windows SDK Desktop Libs x86-x86_en-us.msi"
	extract_msi extracted/sdk "dl/Windows SDK for Windows Store Apps Headers-x86_en-us.msi"
	extract_msi extracted/sdk "dl/Windows SDK for Windows Store Apps Libs-x86_en-us.msi"
	extract_msi extracted/sdk "dl/Windows SDK for Windows Store Apps Tools-x86_en-us.msi"
	extract_msi extracted/sdk "dl/Universal CRT Headers Libraries and Sources-x86_en-us.msi"

	# ScummVM third party dependencies
	unzip dl/scummvm_libs_2015.zip -d scummvm-libs/
}

function build() {
	# Build tools
	rm -rf cmake/
	mkdir -p cmake/
	cp -a extracted/cmake-3.9.6-win64-x64/* cmake/
	cp -a extracted/ninja.exe cmake/bin/

	# MSVC compiler
	rm -rf visualcpptools/
	mkdir -p visualcpptools/{bin/Hostx64,lib}/
	cp -a extracted/visualcpptools/lib/native/bin/Hostx64/{x64,x86}/ visualcpptools/bin/Hostx64/
	cp -a extracted/visualcpptools/lib/native/include/ visualcpptools/
	cp -a extracted/visualcpptools/lib/native/lib/{x64,x86}/ visualcpptools/lib/

	# Windows SDK
	rm -rf winsdk/
	mkdir -p winsdk/{bin,include,lib}/
	mkdir -p winsdk/lib/{ucrt,um}/
	cp -a extracted/sdk/Program\ Files/Windows\ Kits/10/bin/10.0.15063.0/{x64,x86}/ winsdk/bin/
	cp -a extracted/sdk/Program\ Files/Windows\ Kits/10/Include/10.0.16299.0/{shared,ucrt,um}/ winsdk/include/
	cp -a extracted/sdk/Program\ Files/Windows\ Kits/10/Lib/10.0.16299.0/ucrt/{x64,x86}/ winsdk/lib/ucrt/
	cp -a extracted/sdk/Program\ Files/Windows\ Kits/10/Lib/10.0.16299.0/um/{x64,x86}/ winsdk/lib/um/
}

function cleanup() {
	rm -rf dl/
	rm -rf extracted/
}

download
extract
build
cleanup
