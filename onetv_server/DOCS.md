# OneTV Server

Enregistreur TV pour **OneTV Connect** (iPhone, iPad, Apple TV, Mac), inclus dans OneTV Connect Pro.
Votre Home Assistant enregistre les chaînes de vos abonnements IPTV, même quand vos appareils sont éteints.

*English below.*

## Installation (3 clics)

1. **Paramètres › Modules complémentaires › Boutique des modules complémentaires**, menu **⋮ › Dépôts**, ajoutez :
   `https://github.com/Seidel76/onetv-homeassistant`
2. Ouvrez **OneTV Server** dans la boutique, cliquez **Installer**.
3. Cliquez **Démarrer** (laissez « Démarrer au boot » et « Chien de garde » activés).

Ensuite, ouvrez le panneau **OneTV Server** dans la barre latérale et cliquez **« Associer un appareil »**,
ou ouvrez OneTV Connect sur le même réseau : **Réglages › OneTV Server › Associer**. Aucun code à saisir.

## Configuration

| Option | Défaut | Rôle |
|---|---|---|
| `recordings_path` | `/media/OneTV` | Dossier des enregistrements, sous `/media` (visible dans **Médias**) ou `/share`. Pour un disque USB, montez-le d'abord dans **Paramètres › Système › Stockage** (il apparaît sous `/media`). |
| `name` | *(vide)* | Nom affiché dans OneTV Connect (vide = « Home Assistant »). |

## Démarrage automatique

Le module démarre avec Home Assistant (**Démarrer au démarrage** activé par défaut dans la page du module, sous **Paramètres › Applications**).
Désactivez cette option si vous préférez le lancer à la main ; l'option **Chien de garde** le relance
s'il s'arrête.

## Réseau

Le module utilise le réseau de l'hôte (nécessaire à la découverte Bonjour/mDNS) :
TCP **47820** (API), UDP **47823** (découverte). Aucun port n'est à ouvrir sur votre box : le pilotage
à distance passe par iCloud.

## Désinstaller

**Désinstaller** dans la page du module. La base de données (`/data`) est supprimée ; les enregistrements
restent dans le dossier choisi.

---

# OneTV Server (English)

TV recording server for **OneTV Connect**, included with OneTV Connect Pro.

## Install (3 clicks)

1. **Settings › Add-ons › Add-on store**, menu **⋮ › Repositories**, add
   `https://github.com/Seidel76/onetv-homeassistant`
2. Open **OneTV Server**, click **Install**.
3. Click **Start**.

Then open the **OneTV Server** panel in the sidebar and click **"Pair a device"**, or open OneTV Connect on
the same network: **Settings › OneTV Server › Pair**. Nothing to type.

## Options

- `recordings_path` (default `/media/OneTV`): recordings folder under `/media` or `/share`.
  USB disks: add them in **Settings › System › Storage** first.
- `name`: name shown in OneTV Connect (empty = "Home Assistant").

## Start on boot

The add-on starts with Home Assistant (**Start on boot**, on by default in the add-on page). Turn it off to
start it by hand; **Watchdog** restarts it if it stops.

## Network

Host network (needed for Bonjour/mDNS): TCP 47820 (API), UDP 47823 (discovery). No router port forwarding:
remote control goes through iCloud.
