# Tracking Chi Harmony in Cell
With changes in _The War Within_, **Chi Harmony** is now baked into **Renewing Mist** as a baseline effect, removing its standalone buff and making tracking more difficult. This guide provides a way to natively display Chi Harmony with duration tracking in Cell.  
Alternatively, you may use this [WeakAura](https://wago.io/15YqP_6ut) but note that WeakAuras has limitations in duration tracking (due to extensions), which may cause inaccuracies.

As of patch 11.1.5, Chi Harmony's icon has changed from <img width=2% height=2% src="https://github.com/user-attachments/assets/787cf6ca-2d95-46d9-8c6a-110ddb35df26"/> to <img width=2% height=2% src="https://github.com/user-attachments/assets/5d052802-57ae-4a07-9726-2156764a9162"/>, going back to <img width=2% height=2% src="https://github.com/user-attachments/assets/704c01b8-4889-40ec-808a-e3c4be8b38dc"/> Renewing Mist once Chi Harmony has fallen off. For visual clarity, this is a huge step forward. However the original intent of this snippet was to display the _actual_ duration left on Chi Harmony, which it still succeeds in.

> [!CAUTION]
> Adding snippets that override code in Cell may cause the addon to break in future updates if not kept up-to-date with the developer’s code. I will continually update here if there are any changes.

# Support
If you have any issues or need clarification, feel free to reach out in my discord below. :)

<a target="_blank" href="https://twitch.tv/lolswirl"><img src="https://img.shields.io/badge/twitch-9045ff?style=for-the-badge&logo=twitch&logoColor=white"/></a><a target="_blank" href="https://discord.gg/ZU5rhXtbNd"><img src="https://img.shields.io/badge/discord-5865F2?style=for-the-badge&logo=discord&logoColor=white"/></a><a target="_blank" href="https://wago.io/p/Swirl"><img src="https://img.shields.io/badge/wago-c1272d?style=for-the-badge&logoColor=white"/></a><a target="_blank" href="https://streamelements.com/lolswirl/tip"><img src="https://img.shields.io/badge/support-e694ae?style=for-the-badge&logo=undertale&textColor=white"/></a>

# Updates
### March 18, 2025
Added a check on indicators to avoid clashing with layouts that _do not_ have Chi Harmony on them.

# Examples
Renewing Mist as a text indicator (top-right)  
<img width=20% height=20% src="https://github.com/user-attachments/assets/9c51a35b-f719-460a-a3d4-19d159be36e3"/>

Renewing Mist and Chi Harmony (bottom-left) as text indicators  
<img width=20% height=20% src="https://github.com/user-attachments/assets/a2123d5e-7ea6-43ae-a471-385d038720d9"/>

Renewing Mist and Chi Harmony as text indicators + Chi Harmony as a color indicator  
<img width=20% height=20% src="https://github.com/user-attachments/assets/f35b588a-2b61-4660-b5c3-0e83ebb6495a"/>

Chi Harmony as an icon indicator  
<img width=20% height=20% src="https://github.com/user-attachments/assets/21703f33-87a1-41c4-bea0-c64f05699f1e"/>

# Instructions
1. Open Cell using `/cell opt`, go to the **Indicators** tab, and create a new indicator in the bottom-left corner.</br><img src="https://github.com/user-attachments/assets/2015e519-5b2a-4c4d-8793-b5bec6c31bdc" width=40% height=40%/>

2. Name it **Chi Harmony** (can really be any name!), select any of the highlighted options (**ICONS, BLOCKS, AND BARS INDICATORS WILL NOT WORK!!!**), ensure **Buff** is selected,  then press **Yes**.</br><img src="https://github.com/user-attachments/assets/88c21a8c-0e3d-4b75-bebf-1e3d1d8d6d31" width=25% height=25%/>


3. Find your newly created indicator in the list and select it.</br><img width=40% height=40% src="https://github.com/user-attachments/assets/e1930702-757c-4452-8f06-077487c81453"/>

4. On the right panel under `Indicator Settings`, check the `Track by name` box and add two spells into the `Buff List`, Chi Harmony (423439) and Renewing Mist (119611).</br><img width=40% height=40% src="https://github.com/user-attachments/assets/5411ff5d-1c9e-4ec4-bc35-3d800616e11a"/>

5. I suggest also moving this indicator out of the top-right corner by adjusting the anchor points, especially if you'll be using the built-in `Healers` indicator. **This does not apply to the Overlay, Color, Glow, or Border indicators.**</br><img width=25% height=25% src="https://github.com/user-attachments/assets/e3c1c265-1880-4f28-bfb7-97f0ad02d1db"/>

6. This guide supports two indicators of your choosing - much like I have one for a text indicator and color indicator, you may do the same with any combination of indicators. If you decide to create another one, follow steps 1 - 6 again.
  > [!NOTE]
  > These indicators only track Chi Harmony. To track Renewing Mist, use a seperate indicator or the built-in `Healers` indicator.

7. After your indicator(s) are created, look at the list on the left side of the **Indicators** tab and figure out the index (number) of your newly created indicators counting up starting at `Healers` in the list. If you do not have a `Healers` indicator, start counting up at your first custom indicator - it will be the one right below `Missing Buffs`. Mine are located at index **2** for my Chi Harmony Color Indicator and index **10** for my Chi Harmony Text Indicator. See the picture for reference.
  > [!NOTE]
  > If you only created one in the previous steps, that's fine - just note down that index.</br></br>
  > If you have multiple layouts with different indexes, the snippet won’t work across all layouts. Try to keep consistency.
  <img width=50% height=50% src="https://github.com/user-attachments/assets/b3c2f8e2-8761-4a68-a8ac-bacf8dc53540"/>

8. Inside the the `About` tab, click `Code Snippets`. Snippets are essentially custom code that we can add to Cell - this is how we'll make Chi Harmony work.</br><img width=50% height=50% src="https://github.com/user-attachments/assets/4c01ac88-b177-4015-bd91-1f0e50c55cfc"/>

9. Press the `+` button to add a new snippet.</br><img width=50% height=50% src="https://github.com/user-attachments/assets/9154bd1f-0493-48c4-93da-a76abfc0f4c5"/>

10. Double click on the `unnamed` snippet to rename it - I named mine Chi Harmony. Press the checkbox next to its name to enable the snippet.</br><img width=50% height=50% src="https://github.com/user-attachments/assets/3221cee9-8b90-4d86-847d-3acdd74e0b47"/>

11. Paste the contents of <a href="https://github.com/lolswirl/chi-harmony-in-cell/blob/main/ChiHarmony.lua" target="_blank">this file that stores some Chi Harmony buff logic</a> into the empty text box below the newly created snippet</br><img width=50% height=50% src="https://github.com/user-attachments/assets/d4d1de89-4493-4520-bc58-e882adf19654"/>

12. At the top of the script, you will see these lines:
    ```lua
    local colorIndicatorIndex = "indicator2"
    local durationIndicatorIndex = "indicator10"
    local chiHarmonyName = "Chi Harmony"
    ```
    Modify these based on your indicators:
    - Color Indicator: Set `colorIndicatorIndex` to its index or `""` if not used.
    - Duration Indicator (Text, Block, Icon, etc.): Set `durationIndicatorIndex` to its index or `""` if not used.
    - Non-English Clients: Change `chiHarmonyName` to the localized Chi Harmony name.
  
    **Examples:**
      - You have a color indicator with an index of 2 and a duration indicator with an index of 3:
        ```lua
        local colorIndicatorIndex = "indicator2"
        local durationIndicatorIndex = "indicator3"
        local chiHarmonyName = "Chi Harmony"
        ```
      - You **do not have** a color indicator but do have a duration indicator with an index of 15:
        ```lua
        local colorIndicatorIndex = ""
        local durationIndicatorIndex = "indicator15"
        local chiHarmonyName = "Chi Harmony"
        ```
      - You have a color indicator with an index of 5, a duration indicator with an index of 7, and Chi Harmony's name on your French client is "Harmonie avec le Chi" :
        ```lua
        local colorIndicatorIndex = "indicator5"
        local durationIndicatorIndex = "indicator7"
        local chiHarmonyName = "Harmonie avec le Chi"
        ```
13. Press `Save` and `Run` at the bottom of snippets, then press `Reload` at the top.</br><img width=50% height=50% src="https://github.com/user-attachments/assets/2b2df9a6-204e-4ea5-9433-11572458bc1a"/>

14. All done! Chi Harmony should display for you natively inside Cell.








