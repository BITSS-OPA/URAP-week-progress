# Week of 4/13 Tasks

* Learned about debugging in RStudio, and building packages.

# Debugging in RStudio tutorial
  * Notes
    * debugonce() - opens debugger next time function in argument is around
      * will open different console with traceback
      * stops code mid execution in order to understand what's happening line by line
      * location of stop is indicated by highlight on the script
      * values in environment will display the value at that snapshot in time
      * code can be stepped through line by line using the next button
      * press "stop" to exit debugger mode
    * browser() - insert this code into script at a point where you want debugger to open at.
      * alternative to debugonce()
      * press continue to run code up until next brower() statement
    * Analyzing error messages
      * test_it() -provides error with traceback ability and option to rerun with debugger
# Package Writing in RStudio
  * Notes/tutorial
    * Packages allow for easy distribution of any functions apps etc through R
    * In order to create your own package:
      * write desired scripts, functions, files etc., and save them to one location
      * Select files in R Files window, go to file -> new project -> new directory -> R package, and add code files before clicking create project
      * THis will open a new working directory with the file structure for a package that R expects
      * Some info then needs to be added before package will work:
        * Description file:
          * open the file and add title, author, etc.
          * add requisite packages under Depends: field
        * Add Data
          * create folder in package directory named "data"
          * save necessary data files into the newly created folder
        * Clean code
          * remove library statements from included code, and make sure code works as desired
        * add documentation to what your package does, and I/Os for each file
        * Run check within the build tab, and make sure package passes each check
        * Click Build & Reload, and this will finalize your packages
      * alternatively, you can build a source package that can be more easily emailed to someone for them to install on their workspace.
      * Use build tab when making changes to package Files
