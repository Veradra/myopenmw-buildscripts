# myopenmw-buildscripts
Build scripts for openmw on windows via git bash + ninja, because remembering the commands is just too hard.


# how to use
Follow the [openmw dev environment setup](https://gitlab.com/OpenMW/openmw/-/wikis/development/development_environment_setup/Windows-(MSVC-2017-and-MSVC-2019)), making sure to install everything (specifically ninja), as well as the buildtools and C++ Development whatever it's called from Visual Studio 2019.

Once that's done, and you have cloned the repository via git clone, copy both files (`build.sh` and `setup.sh`) into the root folder (where the .gitignore, etc are).

After that, run `./setup.sh` and it will do the thing to make it work, and copies `build.sh` to `/MSVC2019_64_Ninja/`.

You SHOULD be asked which build type you want. Select the one you want, and then you're good. The relevant selection will be made in the correct folder (release, debug, rewithdebinfo) in their folders within `/MSVC2019_64_Ninja`

FFR: Am I naming things wrong? Probably!

# Additional builds after initial build
You just have to cd into `MSVC2019_64_Ninja`, and run `./build.sh`, selecting the build you want. Building all will build Release, Debug, and RelWithDebInfo in that order.
