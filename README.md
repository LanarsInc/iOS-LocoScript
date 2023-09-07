#### Installation:
1. File > Swift Packages > Add Package Dependency
2. Add [https://github.com/baraley/LocoScript.git](https://github.com/baraley/LocoScript.git)
3. Set `Dependency Rule` to `Branch` and enter `main` as the branch name
4. In **Add to Target** column, select **None**
<img width="1089" alt="Screenshot 2023-08-30 at 11 25 33" src="https://github.com/baraley/LocoScript/assets/13876908/00258ff5-e1e6-4d34-bc4b-4645413e6ff6">


5. Select the new LocoScript scheme in the toolbar
 <img width="1041" alt="Screenshot 2023-09-07 at 10 45 38" src="https://github.com/baraley/LocoScript/assets/13876908/416e7b59-2f6d-4138-ae9e-73e961722340">


6. Go to **Edit Scheme**: Click on LocoScript scheme and select **Edit Scheme**
7. Go to **Run** phase and select the **Options** tab. In **Working Directory** field, check **Use custom working directory** toggle and enter the path of root directory, the one where the script will perform in. Usually it's the root folder of the project
<img width="938" alt="Screenshot 2023-08-30 at 10 55 49" src="https://github.com/baraley/LocoScript/assets/13876908/fa298354-25ab-4511-b02a-23e099d36894">


9. Find **.locoConfig** file in the root folder of the Package and copy it to the folder selected on the previous step
10. Open the **.locoConfig** file and set **locoAPIKey** and **tags** fields with your values. In **tags** dictionary key represents a tag name, and the value represents the destination folder where the strings should be saved to
<img width="813" alt="Screenshot 2023-09-07 at 11 14 45" src="https://github.com/baraley/LocoScript/assets/13876908/27b4ace9-db64-49b8-968b-0e1c38a8882c">


*APIKey could be created here:

<img width="373" alt="Screenshot 2023-08-30 at 07 50 27" src="https://github.com/baraley/LocoScript/assets/13876908/12eb0628-3b7c-41d1-98ef-5db0532a3003">


10. Select your Mac as a Run Destination
<img width="940" alt="Screenshot 2023-09-07 at 11 30 38" src="https://github.com/baraley/LocoScript/assets/13876908/9e79f165-6e52-4afe-a5f2-f5acb2693ce0">


11. Run the script and wait until it print: `✅ Loco script did finish`
