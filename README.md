# Bearer Action

A [GitHub Action](https://github.com/features/actions) for using [Bearer](https://bearer.com) to scan your codebase.

You can use the Action as follows:

```yaml
name: Example workflow using Bearer

on:
  schedule:
    - cron: "0 9 * * *" # Runs every day at 9:00 am

permissions:
  contents: read # Minimal permissions

jobs:
  security:
    runs-on: ubuntu-latest
    steps:
      - name: Run Bearer
        uses: bearer/actions@main
        env:
          BEARER_TOKEN: ${{ secrets.BEARER_TOKEN }}
```

Made with 💜 by Bearer
