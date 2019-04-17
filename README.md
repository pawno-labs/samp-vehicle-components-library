# Vehicle Components Library

[![sampctl](https://shields.southcla.ws/badge/sampctl-samp--vehicle--components--library-2f2f2f.svg?style=for-the-badge)](https://github.com/pawno-labs/samp-vehicle-components-library)

<!--
Short description of your library, why it's useful, some examples, pictures or
videos. Link to your forum release thread too.

Remember: You can use "forumfmt" to convert this readme to forum BBCode!

What the sections below should be used for:

`## Installation`: Leave this section un-edited unless you have some specific
additional installation procedure.

`## Testing`: Whether your library is tested with a simple `main()` and `print`,
unit-tested, or demonstrated via prompting the player to connect, you should
include some basic information for users to try out your code in some way.

And finally, maintaining your version number`:

* Follow [Semantic Versioning](https://semver.org/)
* When you release a new version, update `VERSION` and `git tag` it
* Versioning is important for sampctl to use the version control features

Happy Pawning!
-->

This library add a new functions, which help find compatible upgrades.

## Installation

Simply install to your project:

```bash
sampctl package install pawno-labs/samp-vehicle-components-library
```

Include in your code and begin using the library:

```pawn
#include <components>
```

## Usage

<!--
Write your code documentation or examples here. If your library is documented in
the source code, direct users there. If not, list your API and describe it well
in this section. If your library is passive and has no API, simply omit this
section.
-->

```pawn
public OnVehicleMod(playerid, vehicleid, componentid)
{
    new modelid = GetVehicleModel(vehicleid);

    if (IsVehicleUpgradeCompatible(modelid, componentid))
    {
        new
            name[64],
            string[144];

        GetVehicleComponentName(componentid, name, sizeof(name));

        format(string, sizeof(string), "You have successfully installed \"%s\"", name);
        SendClientMessage(playerid, -1, string);
    }
    return 1;
}
```

## Testing

<!--
Depending on whether your package is tested via in-game "demo tests" or
y_testing unit-tests, you should indicate to readers what to expect below here.
-->

To test, simply run the package:

```bash
sampctl package run
```
