# LocoScript

#### Installation:
1. File > Swift Packages > Add Package Dependency
2. Add [https://github.com/baraley/LocoScript.git](https://github.com/baraley/LocoScript.git)
3. In **Add to Target** column, select **None**
4. Select the new LocoScript scheme in the toolbar
5. Click on LocoScript scheme and select **Edit Scheme**
6. Go to the **Run** phase and select the **Options** tab
7. In **Working Directory** field, check **Use custom working directory:** toggle and specify the root directory where the script should perform in
8. Copy **.locoConfig** file from the root folder of the Package to the specified folder on previous step
9. Open the **.locoConfig** file and update the **locoAPIKey** field and the **tags** dictionary. In the dictionary key represents a tag name, and the value represents the destination folder where the strings should be saved to
<img width="373" alt="Screenshot 2023-08-30 at 07 50 27" src="https://github.com/baraley/LocoScript/assets/13876908/12eb0628-3b7c-41d1-98ef-5db0532a3003">

10. Select you Mac as a Run Destination
11. Run the script
