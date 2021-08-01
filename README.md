# myopenmw-buildscripts
build scripts for openme on windows via git bash + ninja, because remembering the commands is just too hard.


# how to use
follow the [openmw dev environment setup](https://gitlab.com/OpenMW/openmw/-/wikis/development/development_environment_setup/Windows-(MSVC-2017-and-MSVC-2019)), making sure to install everything (specifically ninja), as well as the buildtools and C++ Development whatever it's called from Visual Studio 2019.

once that's done, and you have cloned the repository via git clone, copy both files into the root folder (where the .gitignore, etc are).

after that, run `./build.sh` and it will do the thing to make it work, and copies `postbuild.sh` to `/MSVC2019_64_Ninja/`.

You SHOULD be asked which build type you want. Select the one you want, and then you're good. The relevant selection will be made in the correct folder (release, debug, rewithdebinfo) in their folders within `/MSVC2019_64_Ninja`


FFR: Am I naming things wrong? probably!
