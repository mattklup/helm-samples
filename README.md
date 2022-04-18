# helm-samples

```bash
git checkout --orphan gh-pages
git reset --hard

echo "theme: jekyll-theme-slate" > "_config.yaml"
git add .

git commit --allow-empty -m "Initializing gh-pages branch"
git push origin gh-pages
git checkout main
```

Now you can see your page [Here](https://mattklup.github.io/helm-samples/)

## Helm Learning

[Tutorial](https://helm.sh/docs/chart_template_guide/getting_started/)

```bash
# Install (full-coral is an arbitrary release name)
helm install full-coral ./charts/hello-world

# See it in k8s with:
kubectl get configmaps

# Actual loaded template:
helm get manifest full-coral

# Uninstall
helm uninstall full-coral

# Dry-run
helm install --debug --dry-run foo-bar ./charts/hello-world

# override values
helm install --debug --dry-run foo-bar ./charts/hello-world --set menu.drink=slurm
helm install --debug --dry-run foo-bar ./charts/hello-world --set menu.snack=slurm # appends

# add github helm repo
helm repo add me https://mattklup.github.io/helm-samples/
helm install repo-test me/hello-world
```
