# Preparing for the SDSC Summer Institute

You will get the most out of the SDSC Summer Institute if you come well prepared.  By 
brushing up on your knowledge of Linux and installing all necessary software on your 
laptop before arriving, you’ll be able to focus your attention on the skills and topics that are 
most relevant to high performance and data intensive computing.

You will need to bring your own laptop for the summer institute. This will be used both for 
running software locally and connecting the SDSC’s supercomputers.

## Basic Linux skills

Please remember that basic Linux skills are necessary to complete the hands-on exercises. 
If it’s been a while since you’ve worked in a Linux environment, be sure to reacquaint 
yourself with the following topics: copying, listing, deleting and renaming files; using 
wildcards; navigating directories; changing file permissions; setting environment variables; 
using common utilities (grep, cat, less, head, sort, tar, gzip). A nice tutorial can be found 
here <http://www.ee.surrey.ac.uk/Teaching/Unix/>. You should also be comfortable with 
one of the standard Linux editors, such as vim, emacs, or nano.

## Connecting to SDSC’s HPC systems

Since you will be using your laptop to access SDSC’s HPC systems, it is essential that you be 
able to run secure shell (`ssh`) or a similar connection tool with X11 forwarding enabled. 
For Mac users, running `ssh` is trivially easy. Just launch the Terminal application and then 
connect with ssh from the command line

    ssh -X username@hostname

Windows users will need to run an X Server and an ssh-like client. Cygwin provides a 
comprehensive Linux-like environment and an X server (Cygwin/X)

* <http://www.cygwin.com/>
* <http://x.cygwin.com/>

Another popular option is Xming, which comes with a PuTTY ssh client

* <http://www.straightrunning.com/XmingNotes>
* <http://sourceforge.net/project/downloading.php?group_id=156984&filename=Xming-6-9-0-31-setup.exe

If you have a pre-existing SDSC account, please make sure that you can login to Gordon and 
Comet. If you forgot your password, please visit 

* <http://www.sdsc.edu/us/consulting/password.html>

If you do not already have an SDSC account, you will be provided with one on the first day 
of the Summer Institute. 

## Laptop software installations

While many of the hands-on activities will be run on Gordon and Comet, you will also be 
asked to do some of the exercises on your laptop. Much of the summer institute involves 
two parallel sessions: a traditional HPC track and a data track. If you plan to participate in 
the the latter, consider installing the following software before you arrive

### R (statistical programming language)

Follow “download R” link in “Getting started” section of home page. Upgrade to version 
3.0.1 or later if you have an older version.

* <http://www.r-project.org/>

### WEKA (data mining software)

Follow “Download” link on left hand side of home page

* <http://www.cs.waikato.ac.nz/ml/weka/>

### VisIt (visualization tool)

Install `VisIt` software version 2.5.2 on your computer. Since we will do remote visualization 
on Gordon cluster the correct software version is important. Binaries are recommended 
(avoid recompilation). 

* <https://wci.llnl.gov/codes/visit/>
* <https://wci.llnl.gov/codes/visit/executables.html>

### Sample dataset

Download and extract on your desktop (181 MB)

https://wci.llnl.gov/codes/visit/2.3.0/VisItClassData.zip

### Java

Most likely you already have Java installed, but you may want to confirm

* <http://www.java.com>
