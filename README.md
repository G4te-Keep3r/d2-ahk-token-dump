# d2-ahk-token-dump
 turn in tokens and dismantle gear

AutoHotKey files to automate turning in tokens and then dismantling the gear you get from the engrams. Use this for zavala/strikes/vanguard (dissapear on 9/24/21 so yea this should have been uploaded sooner, oops). Future plan is to adapt this for gunsmith materials and planetary vendors.

-----------------

It turns in 1,000 tokens and opens those engrams, then dismantles what you got to generate glimmer/shards. This repeats until you stop it. I don't think it would do anything bad if you left it running after you run out of tokens, but not positive, so you have been warned.

Example of 1 loop can be seen here at 1000% speed https://youtu.be/lQ1RVkgn_0A

-----------------

Setup process:
1) Download https://www.autohotkey.com/
2) Download script that matches your resolution:
1080p https://raw.githubusercontent.com/G4te-Keep3r/d2-ahk-token-dump/master/zavala-1920x1080p.ahk
1440p ultrawidescreen https://raw.githubusercontent.com/G4te-Keep3r/d2-ahk-token-dump/master/zavala-3440x1440p.ahk
(sorry if you have a different resolution)

        Ensure you are running in Fullscreen or Windowed modes only at 1920x1080 or 3440x1440

        Ensure your screen bounds are default (maximum)

        Make sure your tokens are in character inventory and not your vault

        Would be a good idea to spend your glimmer on bounties/raid banner/spider's materials first, but not required

3) Once downloaded, double click on the script of your choice to activate the hotkeys. AutoHotKey does not have a GUI, it just "launches" and has a green "H" icon in the task bar by your clock. Launch destiny 2, load into the tower, and 

-----------------

Requirements for all options:
1) Ensure your inventory is empty except your equipped weapons and armor. You can leave ghosts/ships/sparrows, just make sure your kinetic/energy/power/helmet/arms/chest/boots/class are empty. To be safe, make sure postmaster is emtpy to
2) Interact with zavala, when at his normal interface to where you could turn in tokens, hit control j
3) Don't move your mouse until the script it finishes (~6 minutes per 1,000 tokens). When you are out of tokens or done with turning them in, hit escape

-----------------

Esc = Kill all AHK script. Will need to reopen file.

-----------------
-----------------

NOTE - the ratio between token turn in and dismantle count is what was correct for shaxx turn in. Erroring on the side of caution with more dismantle than turn in per loop here. You can adjust "Loop, 8" to how many items you want to dismantle per loop if you want to try to optimize this, but at your own risk of sending things to postmaster.