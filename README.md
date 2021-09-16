# rostest composite run steps action

## Usage
You can use the rostest-composite-run-action in a Github Actions by configuring 
a Yaml file, e.g. `.github/workflows/rostest.yml` with the following:

```
on: [push]

jobs:
  rostest_job:
    runs-on: ubuntu-latest
    name: A job to rostest
    steps:
      - uses: actions/checkout@v2
      - id: rostest
        uses: sbgisen/rostest-composite-run-action@v1
      - name: Clenaup workspace
        run: rm -rf ${{ steps.rostest.outputs.workspace-dir }}
        shell: bash
```

## ToDo
It supports only Ubuntu18.04(melodic)

# Refs
[複合実行ステップ アクションの作成](https://docs.github.com/ja/actions/creating-actions/creating-a-composite-run-steps-action)
