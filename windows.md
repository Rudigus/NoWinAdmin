# Windows

### Install npm

Having node downloaded, run in cmd

```shell
node bin/npm-cli.js install npm -gf
```

Having node in your PATH environment variable. And the cmd current directory must be in the package folder of npm

### Edit Environment Variables without admin rights

Windows + R (Run)

Then, in cmd:
```shell
rundll32 sysdm.cpl,EditEnvironmentVariables
```

