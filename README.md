# dividepdf
A tool that takes a pdf file and a set of page ranges and generates output pdfs consisting of the pages specified.

# installation
On Linux and Mac,
1. Install qpdf
2. Clone repository to your machine
3. Add downloaded folder to your $PATH or place dividepdf.sh in a folder in $PATH

If on Windows,
1. Enable Linux subsystem for Windows and install preferred distro from Windows appstore
2. Open installed distribution and setup a user account. Install qpdf and `git clone` this repository
3. Add install location to bash $PATH if not already present in $PATH
4. Exit linux subsystem and open powershell. Run `bash`
5. `dividepdf.sh` should now be usable in bash subshell for powershell. All Windows files are accessible from /mnt/c.

# usage
  For default behaviour, run `dividepdf.sh sourcefile startpage-finishpage [startpage-finishpage ...]` to output slices of sourcefile with default naming scheme (page-range.pdf).
  
  To name output files, run `dividepdf.sh -a sourcefile startpage-finishpage outputfile [startpage-finishpage outputfile ...]`
 
  If on Windows make sure to run in the bash subshell of powershell in a subdirectory of /mnt for easier file access. To access outputted files on Windows, navigate to the directory where files were generated in the bash subshell of powershell. If on a subdirectory of /mnt, run `explorer.exe .`.
