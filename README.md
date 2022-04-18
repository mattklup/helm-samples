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