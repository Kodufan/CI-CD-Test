# README

The purpose of this project isn't directly the Rails application, but rather my ability to set up an automated CI/CD pipeline which lints and tests PRs and pushes code changes when the production branch is pushed to. I am using GitHub actions for linting/testing and Render's tie in to detect and run deploys when the production branch is pushed to. Ideally, PRs are tested and reviewed before being merged to the main branch. At that point, production gets the main branch merged into it when a production deploy is needed.

Over time, I may add functionality to the application, but the goal in doing so still is just to add tests and ensure the pipeline functions properly and the production environment is updated correctly.
