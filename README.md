# Open Source Project Criticality Score - Containerized

## 🔨 Build

```shell
$ buildah build --tag criticality_score
```

## 🏃 Run
```shell
$ podman run --rm --secret=GitHub-Auth-Token,type=env,target=GITHUB_AUTH_TOKEN --env REPO=<target-repo-to-scan> localhost/criticality_score
```

###  Authentication Tokens 🪙
```shell
printf "<your-auth-token>" | podman secret create GitHub-Auth-Token -
```

Refer to upstream's documentation for more information on Authentication: https://github.com/ossf/criticality_score#authentication.

---

#### 🗒️ Options
The follow runtime options are available for modification as `environment variables`:

`OUTPUT_FORMAT` = `default`

Refer to upstream's documentation for more information on how available options work: https://github.com/ossf/criticality_score.