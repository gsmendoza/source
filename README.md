Deploying to gsmendoza.github.com
---------------------------------

```
rm -rf html
git clone git@github.com:gsmendoza/gsmendoza.github.com.git html
serve export . html
cd html
git add -A .
git commit -m 'Deploy.'
git push
```
