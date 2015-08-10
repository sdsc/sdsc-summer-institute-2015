## Setting up

Use your work email address

    $ git config --global user.name "Your Name"
    $ git config --global user.email "your@email.com"
    $ git config --global color.ui "auto"
    $ git config --global core.editor "nano"
    
## Creating a Repository

    cp -r $HOME/sdsc-summer-institute-2015/1_manage_jobs/COMET/HYBRID hello_hybrid
    cd hello_hybrid
    git init

## Tracking Changes to Files

    git add hello_hybrid.c
    git status
    
    git commit -m "First version of hello_hybrid"

    git status
    git log

Changes are saved in the `.git` folder.

## Changing a File

Edit file with `vim` or `nano`

Add "world" after "Hello"

    git status
    git diff
    git commit -m "Added world after Hello"

Other commits: 

* Refactor initializations
* Add hello from process
* Add goodbye from process


	git log
    
## Exploring History

    git diff HEAD~2
    git log 
    git diff refspec
    

## Recovering Old Versions

    rm filename
    git checkout filename
    git checkout HEAD~3 filename

    git tag -a paper-submitted -m "Paper submitted to Journal"
    
## Ignoring things

    nano .gitignore
    
## Collaborating

* Open account on github
* Follow instructions for adding remote and pushing

Exercise: add other source files, commit locally, push to github and check they
show up on the web interface

* clone to another folder
* make change in other folder and push (Create README.md)

## Conflicts

* Make 2 conflicting changes in the two local clones (change printf phrase)
* push one
* try to push other
* `git pull origin master`
* fix merge conflict by modifying file, adding and committing
* `git push origin master`


## Fork SDSC Summer Institute repository

    cd $HOME/sdsc-summer-institute-2015
    git remote -v
    git remote rename origin sdsc

Open browser, go to <http://github.com/sdsc/sdsc-summer-institute-2015>,
click on fork.
Now add the command to add your remote as origin.

    git fetch origin
    git push -u origin master

## Branching

Code in master should always work!

* create new branch `test-num_threads`
* develop there `num_threads(3)` after `omp parallel`
* Now decide you want to make other changes, so go back to master and create an isolated branch:

        git checkout master
        git checkout -b rename-np
        # make changes
        # merge them to master
        git checkout master
        git merge rename-np
        
* Now go back to your feature branch and finish implementation

        git checkout test-num_threads
        git commit -am "added num_threads"

* Need to incorporate new changes from master to the feature branch

        git merge master
        
* push branch to github `git push origin test-num_threads`
* create pull request with web interface on github
