#### Installation:
1. File > Swift Packages > Add Package Dependency
2. Add [https://github.com/baraley/LocoScript.git](https://github.com/baraley/LocoScript.git)
3. In **Add to Target** column, select **None**
<img width="1089" alt="Screenshot 2023-08-30 at 11 25 33" src="https://github.com/baraley/LocoScript/assets/13876908/00258ff5-e1e6-4d34-bc4b-4645413e6ff6">


4. Select the new LocoScript scheme in the toolbar
<img width="676" alt="Screenshot 2023-08-30 at 10 54 02" src="https://github.com/baraley/LocoScript/assets/13876908/738c5697-e333-4536-98ec-5ff19f844964">


5. Click on LocoScript scheme and select **Edit Scheme**
6. Go to the **Run** phase and select the **Options** tab
<img width="938" alt="Screenshot 2023-08-30 at 10 55 49" src="https://github.com/baraley/LocoScript/assets/13876908/fa298354-25ab-4511-b02a-23e099d36894">


7. In **Working Directory** field, check **Use custom working directory:** toggle and select the root directory where the script should perform in
8. Copy **.locoConfig** file from the root folder of the Package to the folder selected on the previous step
9. Open the **.locoConfig** file and update **locoAPIKey** and **tags** fields. In **tags** dictionary key represents a tag name, and the value represents the destination folder where the strings should be saved to

*APIKey could be created here:

<img width="373" alt="Screenshot 2023-08-30 at 07 50 27" src="https://github.com/baraley/LocoScript/assets/13876908/12eb0628-3b7c-41d1-98ef-5db0532a3003">


10. Select you Mac as a Run Destination
<img width="639" alt="Screenshot 2023-08-30 at 11 01 26" src="https://github.com/baraley/LocoScript/assets/13876908/7453fbd0-b39a-4f53-bbe4-bdab4bf9c488">


11. Run the script
