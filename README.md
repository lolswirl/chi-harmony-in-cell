# Tracking Chi Harmony in Cell
With the change in The War Within of Chi Harmony being baked into Renewing Mist as a baseline effect, no longer having its own buff that makes it easy to track who has the effect - this guide will serve as a means to natively display Chi Harmony with duration tracking in Cell. You may use a WeakAura instead, however, due to limitations of WeakAuras, duration tracking isn't exact and may cause issues.

DISCLAIMER: Adding snippets that override code in Cell may cause the addon to break in future updates if not kept up-to-date with the developer’s code.

# Updates
**2-25-2025**: Cell’s developer released Cell r245 with a slight change to their code that disabled all code snippets. You'll need to re-enable it under **About -> Code Snippets** and check the Chi Harmony snippet **checkbox** right next to its name then press Reload at the top right corner.
<img width=50% height=50% src="https://github.com/user-attachments/assets/704d5c50-12f4-456e-b119-5767b3e0c220"/>

# Examples
Renewing Mist as a text indicator (top-right)</br>
<img width=15% height=15% src="https://github.com/user-attachments/assets/9c51a35b-f719-460a-a3d4-19d159be36e3"/>

Renewing Mist and Chi Harmony (bottom-left) as text indicators</br>
<img width=15% height=15% src="https://github.com/user-attachments/assets/a2123d5e-7ea6-43ae-a471-385d038720d9"/>

Renewing Mist and Chi Harmony as text indicators + Chi Harmony as a color indicator</br>
<img width=15% height=15% src="https://github.com/user-attachments/assets/f35b588a-2b61-4660-b5c3-0e83ebb6495a"/>

Chi Harmony as an icon indicator</br>
<img width=15% height=15% src="https://github.com/user-attachments/assets/21703f33-87a1-41c4-bea0-c64f05699f1e"/>

# Instructions
1. Open Cell (`/cell opt`) and click the **Indicators** tab at the top menu options, then create a new indicator at the bottom-left corner.</br>
<img src="https://github.com/user-attachments/assets/2015e519-5b2a-4c4d-8793-b5bec6c31bdc" width=40% height=40%/>

2. Type in Chi Harmony into the top box (can really be any name!), select any of the highlighted options (**ICONS, BLOCKS, AND BARS INDICATORS WILL NOT WORK!!!**), and make sure Buff is selected and press 'Yes'.</br>
<img src="https://github.com/user-attachments/assets/259e716f-2b10-4e73-a0f7-50f86870c22b" width=25% height=25%/>

3. Find the indicator you just created in the list on the left side and select it.</br>
<img width=40% height=40% src="https://github.com/user-attachments/assets/e1930702-757c-4452-8f06-077487c81453"/>

5. On the right panel under `Indicator Settings`, check the `Track by name` box and add two spells into the `Buff List`, Chi Harmony (423439) and Renewing Mist (119611).</br>
<img width=40% height=40% src="https://github.com/user-attachments/assets/5411ff5d-1c9e-4ec4-bc35-3d800616e11a"/>

6. I suggest also moving this indicator out of the top-right corner by adjusting the anchor points, especially if you'll be using the built-in `Healers` indicator. **This does not apply to the Overlay, Color, Glow, or Border indicators.**</br>
<img width=25% height=25% src="https://github.com/user-attachments/assets/e3c1c265-1880-4f28-bfb7-97f0ad02d1db"/>

7. This guide supports two indicators of your choosing - much like I have one for a text indicator and color indicator, you may do the same with any combination of indicators. If you decide to create another one, follow steps 1 - 6 again.</br>
NOTE: **These indicators you are creating will only be used to track Chi Harmony's duration. In order to track Renewing Mist, you will need to create another indicator or use the built-in Healers indicator.**

8. After your indicator(s) are created, look at the list on the left side of the **Indicators** tab and figure out the index (number) of your newly created indicators counting up starting at `Healers` in the list. Mine are located at index **2** for my Chi Harmony Color Indicator and index **10** for my Chi Harmony Text Indicator. See the picture for reference.</br></br>
NOTE: If you only created one in the previous steps, that's fine - just note down that index.</br></br>
NOTE: If you have multiple layouts with different indexed indicators, the snippet will not work on all of your layouts! Try to keep consistency across all your layouts.</br>
<img width=50% height=50% src="https://github.com/user-attachments/assets/b3c2f8e2-8761-4a68-a8ac-bacf8dc53540"/>

9. Inside the the `About` tab, click `Code Snippets`. Snippets are essentially custom code that we can add to Cell - this is how we'll make Chi Harmony work.</br>
<img width=50% height=50% src="https://github.com/user-attachments/assets/4c01ac88-b177-4015-bd91-1f0e50c55cfc"/>

10. Press the `+` button to add a new snippet.</br>
<img width=50% height=50% src="https://github.com/user-attachments/assets/9154bd1f-0493-48c4-93da-a76abfc0f4c5"/>

11. Double click on the `unnamed` snippet to rename it - I named mine Chi Harmony. Press the checkbox next to its name to enable the snippet.</br>
<img width=50% height=50% src="https://github.com/user-attachments/assets/3221cee9-8b90-4d86-847d-3acdd74e0b47"/>

12. Paste the contencts of this file into the empty text box below the newly created snippet</br>
<img width=50% height=50% src="https://github.com/user-attachments/assets/d4d1de89-4493-4520-bc58-e882adf19654"/>

13. Now we'll do some editing to this code. At the top of the block of code (you may need to scroll up!), there are 3 lines of text:
```
local colorIndicatorIndex = "indicator2"
local durationIndicatorIndex = "indicator10"
local chiHarmonyName = "Chi Harmony"
```
We'll be using these to edit your own specific indicators and configuration.

14. If you created a color indicator, change the `local colorIndicatorIndex = "indicator2"` to your color indicator's index we received from step 8. If not, set to "".</br></br>
If you have created a duration (Text, Block, Icon, etc.) indicator, change the `local durationIndicatorIndex = "indicator10"` to your duration indicator's index we received from step 8. If not, set to "".</br></br>
If your client is not in English, change `local chiHarmonyName = "Chi Harmony"` to your language's equivalent of Chi Harmony.</br>

**Examples:**</br></br>
You have a color indicator with an index of 2 and a duration indicator with an index of 3:
```
local colorIndicatorIndex = "indicator2"
local durationIndicatorIndex = "indicator3"
local chiHarmonyName = "Chi Harmony"
```
You **do not have** a color indicator but do have a duration indicator with an index of 15:
```
local colorIndicatorIndex = ""
local durationIndicatorIndex = "indicator15"
local chiHarmonyName = "Chi Harmony"
```
You have a color indicator with an index of 5, a duration indicator with an index of 7, and Chi Harmony's name on your French client is "Harmonie avec le Chi" :
```
local colorIndicatorIndex = "indicator5"
local durationIndicatorIndex = "indicator7"
local chiHarmonyName = "Harmonie avec le Chi"
```
15. Press `Save` and `Run` at the bottom of snippets, then press `Reload` at the top.</br>
<img width=50% height=50% src="https://github.com/user-attachments/assets/2b2df9a6-204e-4ea5-9433-11572458bc1a"/>

16. All done! Chi Harmony should display for you natively inside Cell.

# Support
Please feel free to contact me on discord @lolswirl or ping me in Peak of Serenity if you come across issues or need clarification. :)








