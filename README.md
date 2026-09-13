# TestPart95 — Roothide

Build online with GitHub Actions.

## Important

This is an unverified cosmetic experiment for iOS 18.3.1. It may not hook the Battery Health screen correctly and may not hide the section on every build. It does not alter real battery data. Keep a way to uninstall it and do not install if Settings enters Safe Mode.

## Build

1. Create a GitHub repository.
2. Upload all files, including `.github/workflows/build.yml`.
3. Open **Actions** → **Build Roothide deb** → **Run workflow**.
4. Download the artifact `TestPart95-deb` and install the `.deb` with Sileo/Zebra.
5. In Roothide Bootstrap, enable injection for **Settings/Preferences**.
