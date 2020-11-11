# alpine-latex-docker

A simple image to build LaTex projects. In order for this to work, you have to
have a `Makefile` which builds you project.

Once you have that, all you have to do is run while in the root directory of
you project:

```
$ docker run -v $PWD:/source zuh0/alpine-latex-docker
```
