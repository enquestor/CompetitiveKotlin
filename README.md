# CompetitiveKotlin
Some nice scripts for a pleasant Kotlin competitive-programming experience.

# Requirements
You'll need to install the kotlin command-line compiler beforehand from [here](https://kotlinlang.org/docs/tutorials/command-line.html).

# How to install
Download the `install.sh` from above.

Run it with root privileges.
```
sudo bash install.sh
```

And you're done! Restart your terminal now to allow paths to take effect.

# Usage
`CompetitiveKotlin` provides two commands:
`kk` for compiling and executing.
`kj` for compiling kotlin into java, for those online judges which do not support kotlin.

## kj
To compile and run `[your_filename].kt`:
```
kk [your_filename]
```

It will compile and execute your program altogether for you, and would delete the compiled `.class` file for you.

## kj
To compile your kotlin code from `[your_filename].kt` into java:
```
kj [your_filename]
```

The result file would be `[your_filename].java`, you could copy this code and submit it to your judge.
