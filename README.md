# ytnobody/docker-riji

This docker image installs [Riji](http://search.cpan.org/~songmu/Riji-0.1.3/lib/Riji.pm). 

Riji is a Simple, git based blog tool that written in perl. (Thanks to SONGMU)

## USAGE

```
$ docker run -e BLOG_REPO_URL=https://some.repo/path/to/blog.git -p 80:80 -d ytnobody/docker-riji
```

## ENV

* BLOG\_REPO\_URL 

  ''REQUIRED''. An url for repository that contains files that pushed after "riji setup".

## EXPOSED PORT

* TCP/80


