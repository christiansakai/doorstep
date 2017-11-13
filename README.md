# Doorstep

A CLI to scrape [AngelList Software Engineering Jobs](https://angel.co/jobs)

If you have `stack` installed, you can build using 

```sh
stack build --local-bin-path . --copy-bins
``` 

to copy the binary to `.`, then just execute it.

If not, please see the binary release [here](https://github.com/christiansakai/doorstep/releases/tag/0.1) (currently only for Mac OSX)

Run the release by downloading the `doorstep-exe` and execute it

```
./doorstep-exe
```

And the list of company links will be written to `./angel_jobs.txt`
