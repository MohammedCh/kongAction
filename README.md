Use this:


on:
  pull_request:
    paths:
      - 'swagger.json' # swagger location to be filled by user
  push:
    paths:
      - 'swagger.json' # swagger location to be filled by user
jobs:
  kong_diff_job:
    runs-on: ubuntu-latest
    name: A job to show you the diff
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
      - name: Create Kong config & diff
        id: diff
        uses: LEGO/KongDiffAction@main
        with:
          directory-filename: 'swagger.json' # swagger location to be filled by user
      - name: Comment diff to PR
        uses: unsplash/comment-on-pr@master
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        with:
          msg: echo "The diff is ${{ steps.diff.outputs.msg }}"
          check_for_duplicate_msg: false  # OPTIONAL
env:
  fileLocation: 'swagger.json'
  # env variables only work in steps, but not on "on.<pull_req|push>.paths" level