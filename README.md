# Move Monero Blockkchain Location
Find my Blog @ https://krakenfuego.com

Quick and Dirty Powershell script to move the location of the Monero Blockchain

Just a quick and dirty script I made to move the Monero wallet location (via symlinking). I know you can move it via the GUI but then if you run moneroD you have to pass a filepath, so I opted to make this solution. Plus who doesnt like one-click and done.

It will try to create any folders if they dont exist (if you have used before running the wallet for the first time), or try to move existing folders and then symlink to them.

Unzip, and Run with Powershell (Backup your wallet.dat / keys first just incase)

~~

Disclaimer: There is no warranty of any kind, don't blame me if it goes wrong and fubars your install :)

~~

Enter New Directory in the form G:/Folder
If the whole blockchain already exists (at the time of writing this was ~15GB), it will take a while to copy obviously.

Known feature – If you run without admin perms - After Script has popped up an admin window it will leave the old window saying Input New Location – Just close it

If it helped you consider sending me a donation 

~~

XMR Donation Address: 88N6LKb2YYbPFSB1C6RSCo3TjFqRe2DuoAbemNvKFjpc7kXUrxFGorFSBAan73RuqLHvZicXNx7SfJY3n49bcaqkRceLpck
