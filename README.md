# Tracking Chi Harmony in Cell
With changes in _The War Within_, **Chi Harmony** is now baked into **Renewing Mist** as a baseline effect, removing its standalone buff and making tracking more difficult. This guide provides a way to natively display Chi Harmony with duration tracking in Cell.  
Alternatively, you may use this [WeakAura](https://wago.io/15YqP_6ut) but note that WeakAuras has limitations in duration tracking (due to extensions), which may cause inaccuracies.

> [!CAUTION]
> Adding snippets that override code in Cell may cause the addon to break in future updates if not kept up-to-date with the developer’s code. I will continually update here if there are any changes.

# Support
If you have any issues or need clarification, feel free to reach out in my discord below. :)

<a target="_blank" href="https://twitch.tv/lolswirl"><img src="https://img.shields.io/badge/twitch-9045ff?style=for-the-badge&logo=twitch&logoColor=white"/></a><a target="_blank" href="https://discord.gg/ZU5rhXtbNd"><img src="https://img.shields.io/badge/discord-5865F2?style=for-the-badge&logo=discord&logoColor=white"/></a><a target="_blank" href="https://wago.io/p/Swirl"><img src="https://img.shields.io/badge/wago-c1272d?style=for-the-badge&logo=data:image/png;base64,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&logoColor=white"/></a><a target="_blank" href="https://streamelements.com/lolswirl/tip"><img src="https://img.shields.io/badge/support-e694ae?style=for-the-badge&logo=undertale&textColor=white"/></a>

# Updates
### Feb 25, 2025
Cell **r245** update disabled all code snippets. To re-enable:
1. Go to `About` -> `Code Snippets`
2. Check the box next to `Chi Harmony` snippet
3. Press `Reload`
<img width=50% height=50% src="https://github.com/user-attachments/assets/704d5c50-12f4-456e-b119-5767b3e0c220"/>

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

7. After your indicator(s) are created, look at the list on the left side of the **Indicators** tab and figure out the index (number) of your newly created indicators counting up starting at `Healers` in the list. Mine are located at index **2** for my Chi Harmony Color Indicator and index **10** for my Chi Harmony Text Indicator. See the picture for reference.
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








