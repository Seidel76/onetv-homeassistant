# OneTV Connect — Home Assistant add-ons

| Add-on | |
|---|---|
| [OneTV Server](onetv_server/) | TV recording server for OneTV Connect |

Repository URL for Home Assistant: `https://github.com/Seidel76/onetv-homeassistant`
— a PUBLIC git repository whose root is the content of this folder
(`repository.yaml` at the root). `onetv-server/packaging/publish.sh` pushes a
snapshot there when `HA_ADDON_REMOTE` is set. A static « dumb HTTP » git
repository on onetvconnect.com would NOT work: the Supervisor clones with
`--depth 1`, which dumb HTTP refuses.

The add-on downloads the published, checksum-verified OneTV Server binary whose
version equals `version:` in `onetv_server/config.yaml`: release the server
first (`packaging/release.sh` + `publish.sh`), then bump the add-on version.
