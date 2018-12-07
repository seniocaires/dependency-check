# OWASP Dependency Check

### See

[OWASP Dependency Check] (https://www.owasp.org/index.php/OWASP_Dependency_Check)

[Documentation: Dependency-check CLI arguments](https://jeremylong.github.io/DependencyCheck/dependency-check-cli/arguments.html)

### Run

```
sudo docker run --rm --volume /projeto/src:/src --volume /projeto/dependency-check/data:/usr/share/dependency-check/data --volume /projeto/dependency-check/report:/report owasp/dependency-check --scan /src --format "HTML" --project "Nome do Projeto" --out /report/projeto
```
