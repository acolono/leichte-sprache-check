# Leichte-Sprache-Checker

A tool for checking texts against the rules of Plain German (Leichte Sprache).

## Branches

| Branch   | Purpose                                                                          |
|----------|----------------------------------------------------------------------------------|
| `main`   | Source code – develop and commit here                                            |
| `deploy` | Server branch – built automatically by GitHub Actions, **do not edit manually** |

## Local Development

JS dependencies are not committed to the repository. Download them before running locally:

```bash
bash scripts/download-deps.sh
```

Then open `index.html` directly in a browser.

## Deployment

Every push to `main` triggers a GitHub Actions workflow that:

1. Downloads JS dependencies (`js/tailwind.js`, `js/alpine.js`, `js/alpine-focus.min.js`)
2. Pushes the result to the `deploy` branch

The `deploy` branch always contains the latest state including all dependencies and is ready to serve directly.

### Server setup (once)

```bash
git clone git@github.com:acolono/leichte-sprache-check.git --branch deploy /var/www/leichte-sprache
```

### Keeping the server up to date

Option A – Cron job (simple):

```bash
# crontab -e
*/5 * * * * cd /var/www/leichte-sprache && git pull origin deploy
```

Option B – GitHub Webhook (instant): configure a webhook on the server that runs `git pull origin deploy` on every push event.
