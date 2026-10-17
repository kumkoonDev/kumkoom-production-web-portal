# Dependency compatibility fix

This project is configured to keep `nuxt-og-image` at `5.1.12` because the current Nuxt dependency set uses `@unhead/vue` 2.x. `nuxt-og-image` 7.x requires `@unhead/vue` 3.4.2 or newer and Nuxt 4.6.1 or newer, so installing v7 into this project causes an npm peer-dependency conflict.

## Clean install on Windows PowerShell

```powershell
Remove-Item -Recurse -Force node_modules -ErrorAction SilentlyContinue
npm ci
npm run dev
```

If you are applying the fix to an existing checkout rather than using this archive, update the dependency and lockfile first:

```powershell
npm pkg set "dependencies.nuxt-og-image=5.1.12"
npm install
Remove-Item -Recurse -Force node_modules -ErrorAction SilentlyContinue
npm ci
```

Do not use `--force` or `--legacy-peer-deps` to bypass this specific version conflict.
