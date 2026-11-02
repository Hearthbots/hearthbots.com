# hearthbots.com homepage, concept v2 (Nov 2 2026)
v2 changes from v1 (v1 is untouched in ../home_proto_v1):
- Euchre is now COMING SOON, the same as Cribbage. Its store placeholders are dimmed and are not links.
- New hero line (Loye's wording): "Classic card games with a cozy futuristic atmosphere". The meta description now says both games are coming soon.
- New blurbs from Loye: Grizz, Zeetie and Trapper. Pandaman's tag is now POUNCER. Lucky Bee is unchanged.
- Bot cards: every card in a row is the same height, and the blurb is centred in the space under the tag.

Real static page: `index.html` + `style.css` + `assets/`, with no frameworks and no JS. It can be dropped onto Cloudflare Pages as-is. Inter is self-hosted (`assets/fonts/Inter.ttf`, OFL).
Screenshots: `hearthbots_home_desktop_1440.png` (full page, 1440x2951), `hearthbots_home_mobile_390.png` (full page, 390x4279). Re-shoot with `./shoot.sh` (headless Chrome).

Look: CSS walnut grain on dark walnut, brass borders, cream text. The base font is 20 px (18 px on mobile), with headings at 2.6rem and blurbs at 1.15rem or more.
Buttons are flat; hover/focus = brass edge glow only (box-shadow ring), no sheen or colour change.

Assets (all real art, copied and resized, not altered):
- Logo: LogoV2 sign (flat), `grokbot_unity_logo_v2_n2.zip` -> logo_v2_sign_flat_2048
- Ember: `cribbage/room_proto_v6/ember_signs/ember_sign_thumbsup_512.png` (ember_go.png also included)
- Euchre icon: `brand/hearthbots_logo/L1_v2/L1_app_icon_v2_1024.png` (walnut). Cribbage icon: `cribbage/lobby_proto_v3/icon/cribbage_app_icon_1024.png` (green)
- Bots: idle_000 of the new head-up packs (`ember_style/headup_packs`)

Names, tags and blurbs are taken from the existing code; nothing is invented:
- Grizz PAPA BEAR, "It's not a card game until people start teasing each other!" (Loye)
- Zeetie PLAYFUL, "Holy Rabbits! Wait, where'd the other 28 cards go?" (Loye)
- Rizzy ADORKABLE, "Always smiling, never mad."
- Gemma STEADY, "Cautious, steady, always smiling."
- Lucky Bee TRICKY, "Bubbly, sneaky, loves a loner." (Sister's persona blurb)
- Pandaman POUNCER (Loye), "Bids careful, then pounces."
- Trapper THE TRAP, "Go ahead, bid!" (Loye)
- Chaos Agent WILDCARD, "Loves aces. Own rules."

Placeholders: App Store / desktop download badges are dashed boxes labelled PLACEHOLDER (no Apple artwork). Swap in Apple's official badge and the real links. Both games' badges are dimmed and not links, because both games are coming soon.
Draft copy (please review): only the meta description (the hero line is Loye's).
Footer links point to /privacy/, /support/ and /release-notes/. Change them if your pages live at other paths.

## v3 (Nov 2 2026): full site copy + Privacy and Support pages
v2 is untouched. This folder is the whole site; deploy it as the Cloudflare Pages root.
- `privacy/index.html`: states only the facts Loye supplied:
  - No personal data, accounts, ads, in-app purchases, analytics or third-party SDKs.
  - The game code makes no network calls, and Unity's engine reporting (analytics, diagnostics, crash reporting) is off.
  - Stats, achievement progress and settings stay on the device; deleting the app removes them.
  - Cribbage will follow the same policy.
  - Contact by mailto; effective date November 2, 2026.
- `support/index.html`: a short intro, the mailto for bugs and feedback, and a tip to include device, game version, what happened and a screenshot. Ember (Go sign) sits beside the intro.
- Same header and footer on every page. Links are relative (`../style.css`, `../assets/`, `../#games`, `../privacy/`, `../support/`), so they work from the subfolders. The home page links now use `privacy/` and `support/` too.
- style.css: one block added at the end for text pages (`.page`, `.doc`, `.tip`, `.mail-big`). Nothing above it changed.
- Clean folder URLs (`privacy/`) work on Cloudflare Pages. When opening the files straight from disk, browsers show a folder listing for those links instead.
- Release Notes page lives at `release-notes/`.
- Shots: `shots/privacy_{desktop_1440,mobile_390}.png`, `shots/support_{desktop_1440,mobile_390}.png`, and the home page PNGs re-shot at the top level. Run `./shoot.sh` to shoot all six.
