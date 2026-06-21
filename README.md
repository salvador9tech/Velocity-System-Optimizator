![Velocity Logo](mainlogo.png)
Welcome to Velocity System Optimizer

Description:
This tool is designed for quick system optimization 
on Windows 10/11.
Current Features:
-Flush DNS: Clears your system's DNS cache. Can help resolve connection issues and prevents routing to outdated server addresses.
-End Background Processes: Performs a best-effort termination of specific, known resource-heavy background applications. Results may vary depending on user's installed apps.
-Clear Temporary Files: Deletes junk files from the system temp folder. Reclaims disk space and reduces system clutter.
-Enable High Performance: Switches the power plan to "High Performance." Prevents the CPU from throttling, ensuring maximum power for your hardware. (Use at own responsibility)
-Disable Telemetry Service: Stops the Windows "DiagTrack" service from collecting and sending diagnostics or usage statistics. Reduces background network activity and improves privacy.
-Disable SysMain Service: Disables the service previously known as Superfetch. Stops Windows from aggressively preloading apps into memory, which prevents high disk and CPU usage on many systems.
-Disable Print Spooler: Turns off the background printer system. Highly recommended if you do not own or use a printer, as it frees up system memory and eliminates a known source of background bloat.

Usage:
1. Get the latest version from the Releases tab.
2. Unpack the .zip folder in desired location.
3. Ensure 'VelocityOptimizator.vbs' and 'MainProcess.bat' 
   are in the same folder.
4. Launch the tool using 'VelocityOptimizator.vbs' file.
5. Select option(s) from the menu in the console.

Disclaimer:
Software is provided "as-is". User assumes full 
responsibility for any system changes. The author 
is not responsible for any system issues. Although
the program was made to enhance performance, for 
both gamers, and their PC's, not all programs are
always perfect. This tool is built with good
intentions to improve the system's health,
not cause harm.

This is my first project on GitHub. In free time, I will update, and work on it consistently, to
deliver a professional, real performace boost, PC optimization tool. I will upload new releases, with 
new features coming with them. If you’ve got any feedback, suggestions for new features,
or just know a better way to optimize, feel free to open an issue, in the Issues section.
I appreciate every bit of feedback because I want "Velocity" to be a tool that actually helps gamers out.

Thanks for choosing my tools.
-salvador9tech

## Changelog

### v1.1.0 (Latest)
- Added **Disable Telemetry Service** feature.
- Added **Disable SysMain Service** feature.
- Added **Disable Print Spooler** feature.
- Added dynamic menu system that adapts to Administrator privileges.
- Created a .bat file **Velocity Revert Tool** to safely undo changes.
- Switched development environment to Visual Studio Code.

### v1.0.0
- Initial release with Flush DNS, Terminate Background, Clear Temp Files, and High Performance power plan.
