
-----

# <h1><strong> 🤖 BAR-Tweaks</strong></h1>

- Custom Lua script tweaks for [Beyond All Reason (BAR)](https://www.beyondallreason.info/) mods.
- BAR lets you modify the game with some limitations, using Lua scripts.
- The scripts are added to the game in base64 format and are decoded and loaded in post.
- Enable, disable, or modify units, buildings, weapons, and game mechanics and more.

<p align="left">
  <img src="https://raw.githubusercontent.com/blind-git/BAR-Tweaks/refs/heads/main/banner.png" 
       alt="Banner" />
</p>

[![GitHub issues](https://img.shields.io/github/issues/blind-git/BAR-Tweaks?style=flat&logo=github)](https://github.com/blind-git/BAR-Tweaks/issues)
[![GitHub stars](https://img.shields.io/github/stars/blind-git/BAR-Tweaks?style=flat&logo=github)](https://github.com/blind-git/BAR-Tweaks/stargazers)
[![BAR GitHub](https://img.shields.io/badge/BAR-GitHub-181717?style=flat&logo=github&logoColor=white)](https://github.com/beyond-all-reason)
[![BAR Discord](https://img.shields.io/badge/BAR-Discord-5865F2?style=flat&logo=discord&logoColor=white)](https://discord.gg/beyond-all-reason)
[![Blind's Discord](https://img.shields.io/badge/ADHD%20BlinD's-Discord-5865F2?style=flat&logo=discord&logoColor=white)](https://discord.gg/KcdTYNRbfR)

---

<details><summary><h2><strong> 🛠 Usage</strong></h2></summary>
  
##

<details>
<summary><h3>🎮 Lobby Commands</h3></summary>

>
>  To apply tweaks, use the `tweakdefs` or `tweakunits` commands. Refer to usage section of tweak for appropriate method per mod.
> 
> `tweakunits` must not contain any script elements such as functions, loops, or similar. The code replaces certain variables.
>
> `tweakdefs` is much more extensive, here you can integrate functions and loops to, iterate over all units defs, or based off of any unitdef.
>
>  Ensure each command is on its own line if pasting multiple at once.

```
!bset tweakdefs1 <base64>
!bset tweakdefs2 <base64> ...etc
!bset tweakunits1 <base64>
!bset tweakunits2 <base64> ...etc
```
> Script must be encoded in base64 for the in game tweak function to accept it. Codes are supplied with the tweaks.
>
> The scripts are also availiable to modify, you can adjust them, encode to base64 and make your own.

</details>

</details>

-----

<details><summary><h2><strong> 📂 Tweaks</strong></h2></summary>

##

<details><summary><h3><strong> ✅ Enable or Add</h3></strong></summary>
  
<details>

<summary><h4> ConTurret Build Options</h4></summary>

>
>  📝 **File:** [`enable-conturret-buildoptions.lua`](enable-conturret-buildoptions.lua)
>
>  🔧 **Usage:** `!bset tweakdefs <base64>`
>
>  ℹ️ **Info:**
>   
> - Adds T1 and T2 build options to their relevant tiers ConTurret. 
>
> - Updated to support Floating ConTurrets T1 and T2 and base builder turret with T1
>
> **Code:**
```
LS1FbmFibGUgQ29uVHVycmV0IEJ1aWxkT3B0aW9ucwpmdW5jdGlvbiBkZWVwY29weShhKQogICAgbG9jYWwgYiA9IHR5cGUoYSkKICAgIGxvY2FsIGMKICAgIGlmIGIgPT0gJ3RhYmxlJyB0aGVuCiAgICAgICAgYyA9IHt9CiAgICAgICAgZm9yIGQsIGUgaW4gbmV4dCwgYSwgbmlsIGRvIAogICAgICAgICAgICBjW2RlZXBjb3B5KGQpXSA9IGRlZXBjb3B5KGUpCiAgICAgICAgZW5kCiAgICAgICAgc2V0bWV0YXRhYmxlKGMsIGRlZXBjb3B5KGdldG1ldGF0YWJsZShhKSkpCiAgICBlbHNlIAogICAgICAgIGMgPSBhIAogICAgZW5kCiAgICByZXR1cm4gYyAKZW5kCgpsb2NhbCBVbml0RGVmcyA9IFVuaXREZWZzIG9yIHt9CgotLSBUMSBuYW5vIHR1cnJldHMgZ2V0IFQxIGNvbnN0cnVjdG9yIGJ1aWxkb3B0aW9ucwpsb2NhbCB0MUNvbnN0cnVjdG9ycyA9IHsKICAgIGFybW5hbm90YyA9ICdhcm1jaycsIAogICAgYXJtcmVzcGF3biA9ICdhcm1jaycsIAogICAgY29ybmFub3RjID0gJ2NvcmNrJywgCiAgICBjb3JyZXNwYXduID0gJ2NvcmNrJywgCiAgICBsZWduYW5vdGMgPSAnbGVnY2snLCAKICAgIGxlZ3Jlc3Bhd24gPSAnbGVnY2snLCAKICAgIGxlZ25hbm90Y2Jhc2UgPSAnbGVnY2snCn0KCmZvciBuYW5vVW5pdCwgY29uc3RydWN0b3IgaW4gcGFpcnModDFDb25zdHJ1Y3RvcnMpIGRvIAogICAgaWYgVW5pdERlZnNbbmFub1VuaXRdIGFuZCBVbml0RGVmc1tjb25zdHJ1Y3Rvcl0gdGhlbiAKICAgICAgICBVbml0RGVmc1tuYW5vVW5pdF0uYnVpbGRvcHRpb25zID0gZGVlcGNvcHkoVW5pdERlZnNbY29uc3RydWN0b3JdLmJ1aWxkb3B0aW9ucykKICAgIGVuZCAKZW5kCgotLSBGbG9hdGluZyBuYW5vIHBsYXRmb3JtcyBnZXQgc3VibWFyaW5lIGNvbnN0cnVjdG9yIGJ1aWxkb3B0aW9ucwpsb2NhbCBmbG9hdGluZ05hbm9zID0gewogICAgLS0gVDEgZmxvYXRpbmcgbmFub3MKICAgIGFybW5hbm90Y3BsYXQgPSAnYXJtY3MnLAogICAgY29ybmFub3RjcGxhdCA9ICdjb3JjcycsIAogICAgbGVnbmFub3RjcGxhdCA9ICdjb3JjcycsICAtLSBMZWdpb24gdXNlcyBDb3J0ZXggbmF2eSBzaW5jZSBubyBMZWdpb24gbmF2eSB5ZXQKICAgIAogICAgLS0gVDIgZmxvYXRpbmcgbmFub3MKICAgIGFybW5hbm90YzJwbGF0ID0gJ2FybWFjc3ViJywKICAgIGNvcm5hbm90YzJwbGF0ID0gJ2NvcmFjc3ViJywKICAgIGxlZ25hbm90YzJwbGF0ID0gJ2NvcmFjc3ViJyAgLS0gTGVnaW9uIHVzZXMgQ29ydGV4IG5hdnkgc2luY2Ugbm8gTGVnaW9uIG5hdnkgeWV0Cn0KCmZvciBmbG9hdGluZ05hbm8sIHN1YkNvbnN0cnVjdG9yIGluIHBhaXJzKGZsb2F0aW5nTmFub3MpIGRvIAogICAgaWYgVW5pdERlZnNbZmxvYXRpbmdOYW5vXSBhbmQgVW5pdERlZnNbc3ViQ29uc3RydWN0b3JdIHRoZW4gCiAgICAgICAgVW5pdERlZnNbZmxvYXRpbmdOYW5vXS5idWlsZG9wdGlvbnMgPSBkZWVwY29weShVbml0RGVmc1tzdWJDb25zdHJ1Y3Rvcl0uYnVpbGRvcHRpb25zKQogICAgZW5kIAplbmQKCi0tIFQyIG5hbm8gdHVycmV0cyBnZXQgZXh0cmEgdW5pdHMKbG9jYWwgdDJOYW5vRXh0cmFzID0gewogICAgYXJtbmFub3RjdDIgPSB7CiAgICAgICAgY29uc3RydWN0b3IgPSAnYXJtYWNrJywKICAgICAgICBjb21tb25Vbml0cyA9IHsnYXJtZ2F0ZXQzJywgJ2FybW5hbm90Y3QyJywgJ2FybXdpbnQyJywgJ2FybWFhcCcsICdhcm1hdnAnfSwKICAgICAgICBmYWN0aW9uVW5pdHMgPSB7J2FybW1pbml2dWxjJywgJ2FybWJvdHJhaWwnLCAnYXJtYW5uaXQzJywgJ2FybXNob2Nrd2F2ZScsICdhcm1sd2FsbCd9CiAgICB9LAogICAgY29ybmFub3RjdDIgPSB7CiAgICAgICAgY29uc3RydWN0b3IgPSAnY29yYWNrJywKICAgICAgICBjb21tb25Vbml0cyA9IHsnY29yZ2F0ZXQzJywgJ2Nvcm5hbm90Y3QyJywgJ2NvcndpbnQyJywgJ2NvcmFhcCcsICdjb3JhdnAnfSwKICAgICAgICBmYWN0aW9uVW5pdHMgPSB7J2Nvcm1pbmlidXp6JywgJ2NvcmhsbGxsdCcsICdjb3Jkb29tdDMnLCAnY29ybXdhbGwnfQogICAgfSwKICAgIGxlZ25hbm90Y3QyID0gewogICAgICAgIGNvbnN0cnVjdG9yID0gJ2xlZ2FjaycsCiAgICAgICAgY29tbW9uVW5pdHMgPSB7J2xlZ2dhdGV0MycsICdsZWduYW5vdGN0MicsICdsZWd3aW50MicsICdsZWdhYXAnLCAnbGVnYXZwJ30sCiAgICAgICAgZmFjdGlvblVuaXRzID0geydsZWdtb2hvY29uJywgJ2xlZ3J3YWxsJ30KICAgIH0KfQoKZm9yIHQyTmFub1VuaXQsIGNvbmZpZyBpbiBwYWlycyh0Mk5hbm9FeHRyYXMpIGRvIAogICAgaWYgVW5pdERlZnNbdDJOYW5vVW5pdF0gYW5kIFVuaXREZWZzW2NvbmZpZy5jb25zdHJ1Y3Rvcl0gdGhlbiAKICAgICAgICAtLSBTdGFydCB3aXRoIFQyIGNvbnN0cnVjdG9yIGJ1aWxkb3B0aW9ucyBhcyBiYXNlCiAgICAgICAgVW5pdERlZnNbdDJOYW5vVW5pdF0uYnVpbGRvcHRpb25zID0gZGVlcGNvcHkoVW5pdERlZnNbY29uZmlnLmNvbnN0cnVjdG9yXS5idWlsZG9wdGlvbnMpCiAgICAgICAgCiAgICAgICAgLS0gQWRkIGNvbW1vbiB1bml0cwogICAgICAgIGZvciBfLCB1bml0TmFtZSBpbiBpcGFpcnMoY29uZmlnLmNvbW1vblVuaXRzKSBkbyAKICAgICAgICAgICAgdGFibGUuaW5zZXJ0KFVuaXREZWZzW3QyTmFub1VuaXRdLmJ1aWxkb3B0aW9ucywgdW5pdE5hbWUpCiAgICAgICAgZW5kCiAgICAgICAgCiAgICAgICAgLS0gQWRkIGZhY3Rpb24tc3BlY2lmaWMgdW5pdHMKICAgICAgICBmb3IgXywgdW5pdE5hbWUgaW4gaXBhaXJzKGNvbmZpZy5mYWN0aW9uVW5pdHMpIGRvIAogICAgICAgICAgICB0YWJsZS5pbnNlcnQoVW5pdERlZnNbdDJOYW5vVW5pdF0uYnVpbGRvcHRpb25zLCB1bml0TmFtZSkKICAgICAgICBlbmQgCiAgICBlbmQgCmVuZA
```
---
</details>

<details>
<summary><h4>Extra Units Lite Pack</h4></summary>

>
> 📝 **File:** [`enable-extraunitslite.lua`](enable-extraunitslite.lua)
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Enables extra units lite pack.
>
> - Designed to be used without official extra units pack mod option in game.
>
> - Updated to be a `tweakdef` not a `tweakunit`
>
> - **New Units:**
>
> | Tier | Faction | Units |
> |------|---------|-------|
> | **T1** | Arm | Zapper (EMP Scout – enhanced speed/health), Firefly (Flying Rez/Reclaim) |
> | **T2** | Arm | T2 Construction Turret, T2 Floating Construction Turret, Shockwave (T2 EMP Mex) |
> |       | Core | Deadeye (Sniper), Siegebreaker (Starlight equivalent), Phantom (Spy Tank), Printer (Field Engineer), Forge (Combat Engineer), Torch (Flame Tank), Laser Tiger (Mobile HLT), Heat Tiger (Heatray Tiger), Advanced Armed Exploiter, T2 Floating Construction Turret, Dragon's Rage (T2 Popup Turret)  |
> |       | Legion | Advanced Metal Fortifier, T2 Construction Turret, T2 Floating Construction Turret |
> | **T3** | Arm | Assimilator (Anti-Spam/AA), Lunchbox (All-Terrain Heavy Plasma Cannon), Meatball (Amphibious Mech), Epic Pawn (Amphibious Fast Infantry Bot), Epic Recluse (All-Terrain Amphibious Rocket Spider), Ratte (Very Heavy Amphibious Riot Tank), Nexus Terra (Drone Carrier) |
> |       | Core | Epic Grunt (Fast Amphibious Infantry Bot), Epic Karganeth (All-Terrain Amphibious Assault Mech), Epic Commando (Cloakable Amphibious Sabotage Paratrooper Bot), Epic Tzar (Super Heavy Amphibious Assault Tank) |
> |       | Legion | Epic Goblin (Heavy Skirmish Bot), Mukade (Heavy Multi-Weapon Assault Mech), Epic Arcquebus (All-Terrain Amphibious Heavy Sniper Railgun) |
>
> **Code:**
```
LS0gRXh0cmEgVW5pdHMgTGl0ZSArIFQzIEJvdCBMYWJzICsgVDIgTmF2eSBMYWJzCmxvY2FsIFVuaXREZWZzID0gVW5pdERlZnMgb3Ige30KCi0tIFRhYmxlIG9mIGV4dHJhIHVuaXRzIGZvciBlYWNoIGJ1aWxkZXIKbG9jYWwgZXh0cmFVbml0cyA9IHsKICAgIC0tIEFSTSBidWlsZGVycwogICAgYXJtYXAgID0geyJhcm1maWZ5In0sCiAgICBhcm12cCAgPSB7ImFybXphcHBlciJ9LAogICAgYXJtc2hvY2t3YXZlID0ge30sCiAgICBhcm1zaGx0eCA9IHsgIAogICAgICAgICJhcm1hc3NpbWlsYXRvciIsImFybWx1bmNoYm94IiwiYXJtbWVhdGJhbGwiLCJhcm1wd3Q0IiwiYXJtc3B0a3Q0IiwKICAgICAgICAiYXJtcmF0dGV0NCIsImFybWRyb25lY2FycnlsYW5kIiwKICAgIH0sCiAgICBhcm1hY2sgPSB7ImFybW5hbm90Y3QyIiwiYXJtc2hvY2t3YXZlIn0sCiAgICBhcm1hY2EgPSB7ImFybW5hbm90Y3QyIiwiYXJtc2hvY2t3YXZlIn0sCiAgICBhcm1hY3YgPSB7ImFybW5hbm90Y3QyIn0sCgogICAgLS0gQVJNIFQyIG5hdnkgbGFicwogICAgYXJtYXN5ID0geyJhcm1kZWNhZGV0MyIsImFybXBzaGlwdDMiLCJjb3Jlc3VwcHQzIiwiYXJtc2VycHQzIiwiYXJtcHR0MiJ9LAoKICAgIC0tIENPUkUgYnVpbGRlcnMKICAgIGNvcmF2cCA9IHsKICAgICAgICAiY29yYWN2IiwiY29yc2FsYSIsImNvcnJlYXAiLCJjb3JwYXJyb3ciLCJjb3Jnb2wiLCJjb3JiYW4iLCJjb3JtYXJ0IiwKICAgICAgICAiY29ydnJvYyIsImNvcnRyZW0iLCJjb3JzZW50IiwiY29ybWFibSIsImNvcmV0ZXIiLCJjb3J2cmFkIiwiY29ydG9yY2giLAogICAgICAgICJjb3JnYXRyZWFwIiwiY29yZnRpZ2VyIiwiY29yZm9yZ2UiLCJjb3JzaWVnZWJyZWFrZXIiLCJjb3J2YWMiLCJjb3JwaGFudG9tIiwKICAgIH0sCiAgICBjb3JhY2sgPSB7ImNvcm5hbm90Y3QyIiwiY29ybXdhbGwifSwKICAgIGNvcmFjYSA9IHsiY29ybmFub3RjdDIifSwKICAgIGNvcmFjdiA9IHsiY29ybmFub3RjdDIifSwKICAgIGNvcmdhbnQgPSB7ICAgICAgIAogICAgICAgICAiY29yYWt0NCIsImNvcmthcmdhbmV0aHQ0IiwiY29ybWFuZG90NCIsImNvcmdvbHQ0IiwibGVnZ29idDMiLCJsZWdwZWRlIiwibGVnc3JhaWx0NCIKICAgIH0sCiAgICBjb3Jmb3JnZSA9IHsKICAgICAgICAiY29ydG9yY2giLCJjb3JzYWxhIiwiY29yZnRpZ2VyIiwiY29yYWgiLCJjb3J2cmFkIiwiY29yZXRlciIsImNvcnNvbGFyIiwKICAgICAgICAiY29yZXhwIiwiY29ybWFrciIsImNvcmV5ZXMiLCJjb3JkcmFnIiwiY29ybWF3IiwiY29ycmwiLCJjb3JobHQiCiAgICB9LAogICAgY29ydmFjID0geyJjb3JuYW5vdGMifSwKCiAgICAtLSBDT1JFIFQyIG5hdnkgbGFicwogICAgY29yYXN5ID0geyJhcm1kZWNhZGV0MyIsImFybXBzaGlwdDMiLCJjb3Jlc3VwcHQzIiwiYXJtc2VycHQzIiwiYXJtcHR0MiJ9LAoKICAgIC0tIExFRyBidWlsZGVycwogICAgbGVnYWNhID0geyJsZWduYW5vdGN0MiIsImNvcm13YWxsIn0sCiAgICBsZWdhY2sgPSB7ImxlZ25hbm90Y3QyIiwiY29ybXdhbGwifSwKICAgIGxlZ2FjdiA9IHsibGVnbmFub3RjdDIiLCJjb3Jtd2FsbCJ9Cn0KCi0tIFVuaXQtc3BlY2lmaWMgdHdlYWtzCmxvY2FsIHVuaXRUd2Vha3MgPSB7CiAgICBhcm16YXBwZXIgPSB7aGVhbHRoID0gMjgwLCBzcGVlZCA9IDE3MS4wfSwKICAgIGNvcnRvcmNoID0ge2hlYWx0aCA9IDEzNTB9Cn0KCi0tIEFwcGx5IGV4dHJhIGJ1aWxkIG9wdGlvbnMKZm9yIGJ1aWxkZXJOYW1lLCB1bml0cyBpbiBwYWlycyhleHRyYVVuaXRzKSBkbwogICAgbG9jYWwgYnVpbGRlciA9IFVuaXREZWZzW2J1aWxkZXJOYW1lXQogICAgaWYgYnVpbGRlciB0aGVuCiAgICAgICAgYnVpbGRlci5idWlsZG9wdGlvbnMgPSBidWlsZGVyLmJ1aWxkb3B0aW9ucyBvciB7fQogICAgICAgIGZvciBfLCB1IGluIGlwYWlycyh1bml0cykgZG8KICAgICAgICAgICAgbG9jYWwgZXhpc3RzID0gZmFsc2UKICAgICAgICAgICAgZm9yIF8sIGJ1IGluIGlwYWlycyhidWlsZGVyLmJ1aWxkb3B0aW9ucykgZG8KICAgICAgICAgICAgICAgIGlmIGJ1ID09IHUgdGhlbiBleGlzdHMgPSB0cnVlIGJyZWFrIGVuZAogICAgICAgICAgICBlbmQKICAgICAgICAgICAgaWYgbm90IGV4aXN0cyB0aGVuCiAgICAgICAgICAgICAgICB0YWJsZS5pbnNlcnQoYnVpbGRlci5idWlsZG9wdGlvbnMsIHUpCiAgICAgICAgICAgIGVuZAogICAgICAgIGVuZAogICAgZW5kCmVuZAoKLS0gQXBwbHkgdW5pdC1zcGVjaWZpYyB0d2Vha3MKZm9yIHVuaXROYW1lLCB0d2Vha3MgaW4gcGFpcnModW5pdFR3ZWFrcykgZG8KICAgIGxvY2FsIHVEZWYgPSBVbml0RGVmc1t1bml0TmFtZV0KICAgIGlmIHVEZWYgdGhlbgogICAgICAgIGZvciBrLCB2IGluIHBhaXJzKHR3ZWFrcykgZG8KICAgICAgICAgICAgdURlZltrXSA9IHYKICAgICAgICBlbmQKICAgIGVuZAplbmQ
```
---
</details>

<details>
<summary><h4>Reverse Gear</h4></summary>

>
> 📝 **File:** [`enable-reversegear.lua`](enable-reversegear.lua) 
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Enables reverse gear functionality for vehicles.  
>
> **Code:**
```
LS1FbmFibGUgUmV2ZXJzZSBHZWFyCmxvY2FsIHVEZWZzID0gVW5pdERlZnMgb3Ige30KZm9yIGlkLCB1RGVmIGluIHBhaXJzKHVEZWZzKSBkbwogICAgaWYgKG5vdCB1RGVmLmNhbmZseSkgYW5kIHVEZWYuc3BlZWQgdGhlbgogICAgICAgIHVEZWYucnNwZWVkID0gdURlZi5zcGVlZCowLjY1CiAgICBlbmQKZW5k
```
---
</details>

<details>
<summary><h4>Underwater DGun</h4></summary>

>
> 📝 **File:** [`enable-dgun-uw.lua`](enable-dgun-uw.lua)
> 
> 🔧 **Usage:** `!bset tweakdefs <base64>`
> 
> ℹ️ **Info:**
> - Allows all commanders to use DGun underwater.
> 
> -⚠️ DGun projectiles above water do not affect submersibles.  
>
> **Code:**
```
LS1FbmFibGUgREd1biBVbmRlcndhdGVyCmxvY2FsIGNvbW1hbmRlcnMgPSB7CiAgICAiYXJtY29tIiwiY29yY29tIiwibGVnY29tIiwKICAgICJhcm1jb21sdmwxIiwiYXJtY29tbHZsMiIsImFybWNvbWx2bDMiLCJhcm1jb21sdmw0IiwiYXJtY29tbHZsNSIsCiAgICAiYXJtY29tbHZsNiIsImFybWNvbWx2bDciLCJhcm1jb21sdmw4IiwiYXJtY29tbHZsOSIsImFybWNvbWx2bDEwIiwKICAgICJjb3Jjb21sdmwxIiwiY29yY29tbHZsMiIsImNvcmNvbWx2bDMiLCJjb3Jjb21sdmw0IiwiY29yY29tbHZsNSIsCiAgICAiY29yY29tbHZsNiIsImNvcmNvbWx2bDciLCJjb3Jjb21sdmw4IiwiY29yY29tbHZsOSIsImNvcmNvbWx2bDEwIiwKICAgICJsZWdjb21sdmwxIiwibGVnY29tbHZsMiIsImxlZ2NvbWx2bDMiLCJsZWdjb21sdmw0IiwibGVnY29tbHZsNSIsCiAgICAibGVnY29tbHZsNiIsImxlZ2NvbWx2bDciLCJsZWdjb21sdmw4IiwibGVnY29tbHZsOSIsImxlZ2NvbWx2bDEwIiwKfQoKZm9yIF8sIG5hbWUgaW4gaXBhaXJzKGNvbW1hbmRlcnMpIGRvCiAgICBsb2NhbCB1RGVmID0gVW5pdERlZnNbbmFtZV0KICAgIGlmIHVEZWYgYW5kIHVEZWYud2VhcG9uZGVmcyB0aGVuCiAgICAgICAgZm9yIF8sIHdEZWYgaW4gcGFpcnModURlZi53ZWFwb25kZWZzKSBkbwogICAgICAgICAgICBpZiB3RGVmLm5hbWUgYW5kIHdEZWYubmFtZTpsb3dlcigpOmZpbmQoImRpc2ludGVncmF0b3IiKSB0aGVuCiAgICAgICAgICAgICAgICB3RGVmLmZpcmVzdWJtZXJzZWQgPSB0cnVlCiAgICAgICAgICAgICAgICB3RGVmLndhdGVyd2VhcG9uICAgPSB0cnVlCiAgICAgICAgICAgIGVuZAogICAgICAgIGVuZAogICAgZW5kCmVuZA
```
---
</details>
</details>

<details><summary><h3><strong> ❌ Disable or Remove</strong></h3></summary>

<details>
<summary><h4>Jamming & Stealth</h4></summary>

>
> 📝 **File:** [`disable-jammingstealthy.lua`](disable-jammingstealthy.lua)
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Removes **all** jamming, stealth, cloak, and sonar-stealth abilities.  
>
> **Code:**
```
LS1EaXNhYmxlIEphbW1pbmcvU3RlYWx0aHkKZm9yIHVuaXROYW1lLCB1RGVmIGluIHBhaXJzKFVuaXREZWZzKSBkbwogICAgaWYgdURlZi5yYWRhcmRpc3RhbmNlamFtIGFuZCB1RGVmLnJhZGFyZGlzdGFuY2VqYW0gPiAwIHRoZW4KICAgICAgICB1RGVmLnJhZGFyZGlzdGFuY2VqYW0gPSAwCiAgICAgICAgdURlZi5zdGVhbHRoID0gZmFsc2UKICAgICAgICB1RGVmLm9ub2ZmYWJsZSA9IGZhbHNlCiAgICAgICAgdURlZi5lbmVyZ3l1cGtlZXAgPSAwCiAgICBlbmQKZW5k
```
---
</details>
<details>
<summary><h4>Tyrannus / Dragon</h4></summary>

>
> 📝 **File:** [`disable-tyrannusdragon.lua`](disable-tyrannusdragon.lua)
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Removes Tyrannus and Dragon units from Advanced Air Labs.  
>
> **Code:**
```
LS1EaXNhYmxlIFR5cmFubnVzL0RyYWdvbgoKbG9jYWwgbGVnYWFwID0gVW5pdERlZnNbImxlZ2FhcCJdCmlmIGxlZ2FhcCBhbmQgbGVnYWFwLmJ1aWxkb3B0aW9ucyB0aGVuCiAgICBmb3IgaT0jbGVnYWFwLmJ1aWxkb3B0aW9ucywxLC0xIGRvCiAgICAgICAgaWYgbGVnYWFwLmJ1aWxkb3B0aW9uc1tpXSA9PSAibGVnZm9ydCIgdGhlbgogICAgICAgICAgICB0YWJsZS5yZW1vdmUobGVnYWFwLmJ1aWxkb3B0aW9ucywgaSkKICAgICAgICBlbmQKICAgIGVuZAplbmQKCmxvY2FsIGNvcmFhcCA9IFVuaXREZWZzWyJjb3JhYXAiXQppZiBjb3JhYXAgYW5kIGNvcmFhcC5idWlsZG9wdGlvbnMgdGhlbgogICAgZm9yIGk9I2NvcmFhcC5idWlsZG9wdGlvbnMsMSwtMSBkbwogICAgICAgIGlmIGNvcmFhcC5idWlsZG9wdGlvbnNbaV0gPT0gImNvcmNyd2giIHRoZW4KICAgICAgICAgICAgdGFibGUucmVtb3ZlKGNvcmFhcC5idWlsZG9wdGlvbnMsIGkpCiAgICAgICAgZW5kCiAgICBlbmQKZW5k
```
---
</details>

</details>

<details><summary><h3><strong> 🛠️ Modify or Tweak</strong></h3></summary>

<details>
<summary><h4>Faction Agnostic Labs</h4></summary>

>
> 📝 **File:** [`mod-factionagnostic.lua`](mod-factionagnostic.lua)
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Allows **all labs** to build all factions units of the same tier and type.  
>
> **Code:**
```
LS1GYWN0aW9uIEFnbm9zdGljIE1vZApsb2NhbCBmdW5jdGlvbiBtZXJnZUxhYnMobGFicykKICAgIGxvY2FsIG1lcmdlZCA9IHt9CiAgICBmb3IgXywgbGFiIGluIGlwYWlycyhsYWJzKSBkbwogICAgICAgIGxvY2FsIHVEZWYgPSBVbml0RGVmc1tsYWJdCiAgICAgICAgaWYgdURlZiBhbmQgdURlZi5idWlsZG9wdGlvbnMgdGhlbgogICAgICAgICAgICBmb3IgXywgYm8gaW4gaXBhaXJzKHVEZWYuYnVpbGRvcHRpb25zKSBkbwogICAgICAgICAgICAgICAgbWVyZ2VkW2JvXSA9IHRydWUKICAgICAgICAgICAgZW5kCiAgICAgICAgZW5kCiAgICBlbmQKICAgIGxvY2FsIGxpc3QgPSB7fQogICAgZm9yIHVuaXROYW1lIGluIHBhaXJzKG1lcmdlZCkgZG8KICAgICAgICB0YWJsZS5pbnNlcnQobGlzdCwgdW5pdE5hbWUpCiAgICBlbmQKICAgIHJldHVybiBsaXN0CmVuZAoKbG9jYWwgbGFiR3JvdXBzID0gewogICAgVDFfQm90ICAgICA9IHsiYXJtbGFiIiwiY29ybGFiIiwibGVnbGFiIn0sCiAgICBUMV9WZWhpY2xlID0geyJhcm12cCIsImNvcnZwIiwibGVndnAifSwKICAgIFQxX0FpciAgICAgPSB7ImFybWFwIiwiY29yYXAiLCJsZWdhcCJ9LAogICAgVDFfU2VhICAgICA9IHsiYXJtc3kiLCJjb3JzeSIsImxlZ3N5In0sCiAgICBUMV9BbXBoaWIgID0geyJhcm1hbXN1YiIsImNvcmFtc3ViIiwibGVnYW1waGxhYiJ9LAogICAgVDFfSG92ZXIgICA9IHsiYXJtaHAiLCJjb3JocCIsImxlZ2hwIn0sCiAgICBUMV9GSG92ZXIgID0geyJhcm1maHAiLCJjb3JmaHAiLCJsZWdmaHAifSwKCiAgICBUMl9Cb3QgICAgID0geyJhcm1hbGFiIiwiY29yYWxhYiIsImxlZ2FsYWIifSwKICAgIFQyX1ZlaGljbGUgPSB7ImFybWF2cCIsImNvcmF2cCIsImxlZ2F2cCJ9LAogICAgVDJfQWlyICAgICA9IHsiYXJtYWFwIiwiY29yYWFwIiwibGVnYWFwIn0sCiAgICBUMl9TZWEgICAgID0geyJhcm1hc3kiLCJjb3Jhc3kiLCJsZWdhc3kifSwKICAgIFQyX1NlYXBsYW5lPSB7ImFybXBsYXQiLCJjb3JwbGF0In0sCgogICAgVDNfR2FudHJ5ICA9IHsiYXJtc2hsdHgiLCJjb3JnYW50IiwibGVnZ2FudCJ9LAogICAgVDNfVVdHYW50cnkgPSB7ImFybXNobHR4dXciLCJjb3JnYW50dXcifSwKICAgIFQzX0FpciA9IHsiYXJtYXB0MyIsImNvcmFwdDMiLCJsZWdhcHQzIn0KfQoKZm9yIF8sIGxhYnMgaW4gcGFpcnMobGFiR3JvdXBzKSBkbwogICAgbG9jYWwgbWVyZ2VkID0gbWVyZ2VMYWJzKGxhYnMpCiAgICBmb3IgXywgbGFiIGluIGlwYWlycyhsYWJzKSBkbwogICAgICAgIGxvY2FsIHVEZWYgPSBVbml0RGVmc1tsYWJdCiAgICAgICAgaWYgdURlZiB0aGVuCiAgICAgICAgICAgIHVEZWYuYnVpbGRvcHRpb25zID0gbWVyZ2VkCiAgICAgICAgZW5kCiAgICBlbmQKZW5k
```
---
</details>

<details>
<summary><h4>Omni Faction Commanders</h4></summary>

>
> 📝 **File:** [`mod-omnifactioncomms.lua`](mod-omnifactioncomms.lua)
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Allows **all commanders** to build any factions T1 Lab.
>
> - Allows **commanders level1-4** to build all unique T1 factions mex (Armed Exploiter, Cloakable Metal Extractor, Overcharged Metal Extractor)
>
> - Allows **commanders level5-10** to build all unique T2 factions mex (Advanced Armed Exploiter, Shockwave Metal Extractor, Advanced Metal Fortifier) and advanced geothermal. (Cerberus/Rampart)
>
> - ✔ Supports evolving commanders.  
>
> **Code:**
```
LS1PbW5pIEZhY3Rpb24gQ29tbWFuZGVycwpsb2NhbCBleHRyYUJ1aWxkT3B0aW9ucyA9IHsKICAgIGFybWNvbSA9IHsKICAgICAgICAtLSBPcmlnaW5hbDogTGFicyAmIEZhY3RvcmllcyAoYWxsIGxldmVscykKICAgICAgICAiY29ybGFiIiwiY29ydnAiLCJjb3JzeSIsImNvcmhwIiwiY29yYXAiLAogICAgICAgICJsZWdsYWIiLCJsZWd2cCIsImxlZ3N5IiwibGVnaHAiLCJsZWdhcCIsCiAgICAgICAgLS0gTmV3OiBUMSBNZXhlcyAoYWxsIGxldmVscykKICAgICAgICAiY29yZXhwIiwgImxlZ21leHQxNSIsCiAgICB9LAogICAgY29yY29tID0gewogICAgICAgIC0tIE9yaWdpbmFsOiBMYWJzICYgRmFjdG9yaWVzIChhbGwgbGV2ZWxzKQogICAgICAgICJhcm1sYWIiLCJhcm12cCIsImFybXN5IiwiYXJtaHAiLCJhcm1hcCIsCiAgICAgICAgImxlZ2xhYiIsImxlZ3ZwIiwibGVnc3kiLCJsZWdocCIsImxlZ2FwIiwKICAgICAgICAtLSBOZXc6IFQxIE1leGVzIChhbGwgbGV2ZWxzKQogICAgICAgICJhcm1hbWV4IiwgImxlZ21leHQxNSIsCiAgICB9LAogICAgbGVnY29tID0gewogICAgICAgIC0tIE9yaWdpbmFsOiBMYWJzICYgRmFjdG9yaWVzIChhbGwgbGV2ZWxzKQogICAgICAgICJhcm1sYWIiLCJhcm12cCIsImFybXN5IiwiYXJtaHAiLCJhcm1hcCIsCiAgICAgICAgImNvcmxhYiIsImNvcnZwIiwiY29yc3kiLCJjb3JocCIsImNvcmFwIiwKICAgICAgICAtLSBOZXc6IFQxIE1leGVzIChhbGwgbGV2ZWxzKQogICAgICAgICJhcm1hbWV4IiwgImNvcmV4cCIsCiAgICB9LAp9CgotLSBUMiBNZXhlcyAmIEdlb3MgZm9yIGV2b2x1dGlvbiBjb21tYW5kZXJzIChsZXZlbHMgNS0xMCBvbmx5KQpsb2NhbCBldm9Pbmx5VW5pdHMgPSB7CiAgICBhcm1jb20gPSB7ImNvcm1leHAiLCAibGVnbW9ob2NvbiIsICJjb3JiaG10aCIsICJsZWdyYW1wYXJ0In0sCiAgICBjb3Jjb20gPSB7ImFybXNob2Nrd2F2ZSIsICJsZWdtb2hvY29uIiwgImxlZ3JhbXBhcnQifSwKICAgIGxlZ2NvbSA9IHsiYXJtc2hvY2t3YXZlIiwgImNvcm1leHAiLCAiY29yYmhtdGgifSwKfQoKZm9yIGJhc2VOYW1lLCBleHRyYXMgaW4gcGFpcnMoZXh0cmFCdWlsZE9wdGlvbnMpIGRvCiAgICBmb3IgbHZsID0gMCwgMTAgZG8KICAgICAgICBsb2NhbCB1bml0TmFtZSA9IGx2bCA9PSAwIGFuZCBiYXNlTmFtZSBvciAoYmFzZU5hbWUgLi4gImx2bCIgLi4gbHZsKQogICAgICAgIGxvY2FsIHVEZWYgPSBVbml0RGVmc1t1bml0TmFtZV0KICAgICAgICBpZiB1RGVmIGFuZCB1RGVmLmJ1aWxkb3B0aW9ucyB0aGVuCiAgICAgICAgICAgIC0tIEFkZCBhbGwgYmFzaWMgdW5pdHMgKGxhYnMsIGZhY3RvcmllcywgVDEgbWV4ZXMpIHRvIGFsbCBsZXZlbHMKICAgICAgICAgICAgZm9yIF8sIG9wdGlvbiBpbiBpcGFpcnMoZXh0cmFzKSBkbwogICAgICAgICAgICAgICAgdGFibGUuaW5zZXJ0KHVEZWYuYnVpbGRvcHRpb25zLCBvcHRpb24pCiAgICAgICAgICAgIGVuZAogICAgICAgICAgICAKICAgICAgICAgICAgLS0gQWRkIFQyIG1leGVzICYgZ2VvcyBvbmx5IHRvIGV2b2x1dGlvbiBsZXZlbHMgNS0xMAogICAgICAgICAgICBpZiBsdmwgPj0gNSBhbmQgZXZvT25seVVuaXRzW2Jhc2VOYW1lXSB0aGVuCiAgICAgICAgICAgICAgICBmb3IgXywgb3B0aW9uIGluIGlwYWlycyhldm9Pbmx5VW5pdHNbYmFzZU5hbWVdKSBkbwogICAgICAgICAgICAgICAgICAgIHRhYmxlLmluc2VydCh1RGVmLmJ1aWxkb3B0aW9ucywgb3B0aW9uKQogICAgICAgICAgICAgICAgZW5kCiAgICAgICAgICAgIGVuZAogICAgICAgIGVuZAogICAgZW5kCmVuZA
```
---
</details>

<details>
<summary><h4>Regenerative Alloys</h4></summary>

>
> 📝 **File:** [`mod-regenerative-alloys.lua`](mod-regenerative-alloys.lua) 
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Adds autoheal and idle autoheal to all units and buildings.
>
> - Boosts all units autoheal + idle autoheal by 10%
>
> - Boost all army unit health by 20%
>
> - Boost all building health by 30%
>
> **Code:**
```
LS1SZWdlbmVyYXRpdmUgQWxsb3lzCmxvY2FsIFVOSVRfSEVBTFRIX01VTFQgPSAxLjIgICAgICAgICAgLS0gMjAlIGJvb3N0IHRvIHVuaXRzJyBtYXggaGVhbHRoCmxvY2FsIFVOSVRfQVVUT0hFQUxfTVVMVCA9IDEuMSAgICAgICAgLS0gMTAlIGJvb3N0IHRvIHVuaXRzJyBhdXRvaGVhbC9pZGxlYXV0b2hlYWwKbG9jYWwgVU5JVF9JRExFX0FVVE9IRUFMID0gNSAgICAgICAgICAgLS0gYmFzZSBpZGxlIGF1dG9oZWFsIGlmIG1pc3NpbmcKbG9jYWwgQlVJTERJTkdfSEVBTFRIX01VTFQgPSAxLjMgICAgICAtLSAzMCUgYm9vc3QgdG8gYnVpbGRpbmcgbWF4IGhlYWx0aApsb2NhbCBCVUlMRElOR19BVVRPSEVBTF9NVUxUID0gMS4xICAgIC0tIDEwJSBib29zdCB0byBidWlsZGluZyBhdXRvaGVhbC9pZGxlYXV0b2hlYWwKbG9jYWwgQlVJTERJTkdfSURMRV9BVVRPSEVBTCA9IDUgICAgICAgLS0gYmFzZSBpZGxlIGF1dG9oZWFsIGlmIG1pc3NpbmcKCmZvciBuYW1lLCB1bml0IGluIHBhaXJzKFVuaXREZWZzKSBkbwogICAgaWYgdW5pdC5jYW5tb3ZlIGFuZCB1bml0LnNwZWVkIGFuZCB1bml0LnNwZWVkID4gMCB0aGVuCiAgICAgICAgLS0gVW5pdAogICAgICAgIHVuaXQuaGVhbHRoID0gbWF0aC5mbG9vcigodW5pdC5oZWFsdGggb3IgMTAwKSAqIFVOSVRfSEVBTFRIX01VTFQpCiAgICAgICAgdW5pdC5hdXRvaGVhbCA9ICh1bml0LmF1dG9oZWFsIG9yIFVOSVRfSURMRV9BVVRPSEVBTCkgKiBVTklUX0FVVE9IRUFMX01VTFQKICAgICAgICB1bml0LmlkbGVhdXRvaGVhbCA9ICh1bml0LmlkbGVhdXRvaGVhbCBvciBVTklUX0lETEVfQVVUT0hFQUwpICogVU5JVF9BVVRPSEVBTF9NVUxUCiAgICBlbHNlCiAgICAgICAgLS0gQnVpbGRpbmcKICAgICAgICB1bml0LmhlYWx0aCA9IG1hdGguZmxvb3IoKHVuaXQuaGVhbHRoIG9yIDEwMCkgKiBCVUlMRElOR19IRUFMVEhfTVVMVCkKICAgICAgICB1bml0LmF1dG9oZWFsID0gKHVuaXQuYXV0b2hlYWwgb3IgQlVJTERJTkdfSURMRV9BVVRPSEVBTCkgKiBCVUlMRElOR19BVVRPSEVBTF9NVUxUCiAgICAgICAgdW5pdC5pZGxlYXV0b2hlYWwgPSAodW5pdC5pZGxlYXV0b2hlYWwgb3IgQlVJTERJTkdfSURMRV9BVVRPSEVBTCkgKiBCVUlMRElOR19BVVRPSEVBTF9NVUxUCiAgICBlbmQKZW5k
```
---
</details>

<details>
 <summary><h4>Scavboss Commander Weapons</h4></summary>

>
> 📝 **File:** [`mod-scavboss-commweapons.lua`](mod-scavboss-commweapons.lua)
>
> 🔧 **Usage:** `!bset tweakdefs <base64>`
>
> ℹ️ **Info:**
> - Gives all commanders all the scavenger boss weapons.
>
> - Yes this is ridiculous.
>
> - Yes this works with evolving commanders.
>
> **Code:**
```
LS1TY2F2Ym9zcyBDb21tYW5kZXIgV2VhcG9ucwpsb2NhbCBmdW5jdGlvbiBkZWVwQ29weShvcmlnLCBzZWVuKQogICAgaWYgdHlwZShvcmlnKSB-PSAidGFibGUiIHRoZW4gcmV0dXJuIG9yaWcgZW5kCiAgICBpZiBzZWVuIGFuZCBzZWVuW29yaWddIHRoZW4gcmV0dXJuIHNlZW5bb3JpZ10gZW5kCiAgICBsb2NhbCBjb3B5ID0ge30KICAgIHNlZW4gPSBzZWVuIG9yIHt9CiAgICBzZWVuW29yaWddID0gY29weQogICAgZm9yIGssIHYgaW4gcGFpcnMob3JpZykgZG8KICAgICAgICBjb3B5W2RlZXBDb3B5KGssIHNlZW4pXSA9IGRlZXBDb3B5KHYsIHNlZW4pCiAgICBlbmQKICAgIHJldHVybiBjb3B5CmVuZAoKLS0gZmluZCBhIHNjYXZlbmdlcmJvc3N2NCB1bml0IGFzIHdlYXBvbiBzb3VyY2UKbG9jYWwgc291cmNlVUQsIHNvdXJjZU5hbWUKZm9yIG5hbWUsIHVkIGluIHBhaXJzKFVuaXREZWZzKSBkbwogICAgaWYgbmFtZTpsb3dlcigpOmZpbmQoInNjYXZlbmdlcmJvc3N2NCIpIHRoZW4KICAgICAgICBzb3VyY2VVRCA9IHVkCiAgICAgICAgc291cmNlTmFtZSA9IG5hbWUKICAgICAgICBicmVhawogICAgZW5kCmVuZAoKaWYgbm90IHNvdXJjZVVEIHRoZW4KICAgIHJldHVybgplbmQKCmlmIG5vdCBzb3VyY2VVRC53ZWFwb25kZWZzIG9yIG5vdCBzb3VyY2VVRC53ZWFwb25zIHRoZW4KICAgIHJldHVybgplbmQKCi0tIGJ1aWxkIGEgbG9va3VwIG9mIHNvdXJjZSB3ZWFwb25kZWYga2V5cyAobG93ZXIpID0-IG9yaWdpbmFsIGtleQpsb2NhbCBzcmNXRGVmS2V5cyA9IHt9CmZvciBrIGluIHBhaXJzKHNvdXJjZVVELndlYXBvbmRlZnMpIGRvCiAgICBzcmNXRGVmS2V5c1trOmxvd2VyKCldID0gawplbmQKCi0tIGNvcHkgc3JjIHdlYXBvbmRlZnMgdGFibGUgJiBwcmVwYXJlIGRlZiBuYW1lIG1hcHBpbmcgKGxvd2VyIC0-IG5ld0tleSkKbG9jYWwgZGVmTWFwID0ge30KZm9yIGxvd2VySywgb3JpZ0sgaW4gcGFpcnMoc3JjV0RlZktleXMpIGRvCiAgICBsb2NhbCBuZXdLZXkgPSAic2Nhdl8iIC4uIG9yaWdLICAtLSBuZXcga2V5IGluIGNvbW1hbmRlci53ZWFwb25kZWZzCiAgICBkZWZNYXBbbG93ZXJLXSA9IG5ld0tleQplbmQKCi0tIGZ1bmN0aW9uIHRvIGVuc3VyZSBjb21tYW5kZXIgaGFzIHdlYXBvbmRlZnMgdGFibGUKbG9jYWwgZnVuY3Rpb24gZW5zdXJlV2VhcG9uRGVmcyh0YXJnZXRVRCkKICAgIGlmIG5vdCB0YXJnZXRVRC53ZWFwb25kZWZzIHRoZW4gdGFyZ2V0VUQud2VhcG9uZGVmcyA9IHt9IGVuZAplbmQKCmxvY2FsIGZ1bmN0aW9uIGVuc3VyZVdlYXBvbnNMaXN0KHRhcmdldFVEKQogICAgaWYgbm90IHRhcmdldFVELndlYXBvbnMgdGhlbiB0YXJnZXRVRC53ZWFwb25zID0ge30gZW5kCmVuZAoKLS0gY29weSBlYWNoIHdlYXBvbmRlZiBpbnRvIHRhcmdldCB1bmRlciBuZXdLZXkgaWYgbm90IHByZXNlbnQKbG9jYWwgZnVuY3Rpb24gY29weVdlYXBvbkRlZnNUbyh0YXJnZXRVRCkKICAgIGVuc3VyZVdlYXBvbkRlZnModGFyZ2V0VUQpCiAgICBmb3IgbG93ZXJLLCBvcmlnSyBpbiBwYWlycyhzcmNXRGVmS2V5cykgZG8KICAgICAgICBsb2NhbCBuZXdLZXkgPSBkZWZNYXBbbG93ZXJLXQogICAgICAgIGlmIG5vdCB0YXJnZXRVRC53ZWFwb25kZWZzW25ld0tleV0gdGhlbgogICAgICAgICAgICB0YXJnZXRVRC53ZWFwb25kZWZzW25ld0tleV0gPSBkZWVwQ29weShzb3VyY2VVRC53ZWFwb25kZWZzW29yaWdLXSkKICAgICAgICBlbmQKICAgIGVuZAplbmQKCi0tIGNvcHkgd2VhcG9ucyBlbnRyaWVzIChhcnJheSkgaW50byB0YXJnZXQud2VhcG9ucywgcmVtYXBwaW5nIC5kZWYgdG8gbmV3S2V5CmxvY2FsIGZ1bmN0aW9uIGFwcGVuZFdlYXBvbnNFbnRyaWVzVG8odGFyZ2V0VUQpCiAgICBlbnN1cmVXZWFwb25zTGlzdCh0YXJnZXRVRCkKICAgIGZvciBfLCB3RW50cnkgaW4gaXBhaXJzKHNvdXJjZVVELndlYXBvbnMpIGRvCiAgICAgICAgbG9jYWwgZGVmTmFtZSA9IHRvc3RyaW5nKHdFbnRyeS5kZWYgb3IgIiIpCiAgICAgICAgbG9jYWwgbWFwcGVkID0gZGVmTWFwW2RlZk5hbWU6bG93ZXIoKV0KICAgICAgICBpZiBub3QgbWFwcGVkIHRoZW4KICAgICAgICAgICAgLS0gZmFsbGJhY2s6IHRyeSB0byBtYXRjaCBieSBzY2FubmluZyBzcmNXRGVmS2V5cwogICAgICAgICAgICAtLSAoc2hvdWxkbid0IGJlIG5lZWRlZCBub3JtYWxseSkKICAgICAgICAgICAgZm9yIGxrLCBvayBpbiBwYWlycyhzcmNXRGVmS2V5cykgZG8KICAgICAgICAgICAgICAgIGlmIGRlZk5hbWU6bG93ZXIoKSA9PSBvazpsb3dlcigpIHRoZW4KICAgICAgICAgICAgICAgICAgICBtYXBwZWQgPSBkZWZNYXBbbGtdOyBicmVhawogICAgICAgICAgICAgICAgZW5kCiAgICAgICAgICAgIGVuZAogICAgICAgIGVuZAogICAgICAgIGlmIG1hcHBlZCB0aGVuCiAgICAgICAgICAgIGxvY2FsIG5ld0VudHJ5ID0gZGVlcENvcHkod0VudHJ5KQogICAgICAgICAgICBuZXdFbnRyeS5kZWYgPSBtYXBwZWQKICAgICAgICAgICAgdGFibGUuaW5zZXJ0KHRhcmdldFVELndlYXBvbnMsIG5ld0VudHJ5KQogICAgICAgIGVuZAogICAgZW5kCmVuZAoKLS0gbGlzdCBvZiBjb21tYW5kZXIgYmFzZXMgdG8gcGF0Y2ggKGJhc2UgKyBsdmwxLi5sdmwxMCkKbG9jYWwgYmFzZXMgPSB7ImFybWNvbSIsICJjb3Jjb20iLCAibGVnY29tIn0KbG9jYWwgcGF0Y2hlZENvdW50ID0gMApmb3IgXywgYmFzZSBpbiBpcGFpcnMoYmFzZXMpIGRvCiAgICBmb3IgbHZsID0gMCwgMTAgZG8KICAgICAgICBsb2NhbCB1bml0TmFtZSA9IChsdmwgPT0gMCkgYW5kIGJhc2Ugb3IgKGJhc2UgLi4gImx2bCIgLi4gbHZsKQogICAgICAgIGxvY2FsIHVkID0gVW5pdERlZnNbdW5pdE5hbWVdCiAgICAgICAgaWYgdWQgdGhlbgogICAgICAgICAgICBjb3B5V2VhcG9uRGVmc1RvKHVkKQogICAgICAgICAgICBhcHBlbmRXZWFwb25zRW50cmllc1RvKHVkKQogICAgICAgICAgICBwYXRjaGVkQ291bnQgPSBwYXRjaGVkQ291bnQgKyAxCiAgICAgICAgZW5kCiAgICBlbmQKZW5k
```
 
</details>

</details>

</details>

-----

<details>
<summary><h2> 📚 Resources</h2></summary>

##

>
> To learn how to make your own tweaks check out badosu's guide.
>
> - 📘 [**How to Tweak Guide**](https://gist.github.com/badosu/f2617db52e7486a7769366642d354a01)
>
> If you've adjusted or made your own code use a base64 encoder to be able to apply the mod in game.
>
> - 🔑 [**Base64 Encoder Tool**](https://www.base64encode.org/)
>
> Make sure that the “Perform URL-Save Endcoding” checkbox is activated.
>
>
> List of Beyond all Reason unit names and their code names from the language localization files.
> - [**BAR-UNITS**](https://github.com/beyond-all-reason/Beyond-All-Reason/blob/master/language/en/units.json)
>
> Documentation for unitdefs:
> - [**UNIT-DEFS**](https://springrts.com/wiki/Gamedev:UnitDefs)
>
> Documentation for weapondefs:
> - [**WEP-DEFS**](https://springrts.com/wiki/Gamedev:WeaponDefs)
>   
> Everything else you may need can be found in the main bar github repo linked at top.

</details>

-----


