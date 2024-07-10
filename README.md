Git Branch Merge Function for macOS
===================================

This README explains a custom Bash function for macOS that simplifies the process of merging the main branch into a specified branch and pushing the changes to the remote repository.

Function
--------

    
    function paring_w_main {
        git checkout main
        git pull
        git checkout $1
        git merge main
        git push
    }
        

Usage
-----

To use the function, follow these steps:

1.  Open your terminal.
2.  Define the function in your Bash profile (e.g., `~/.bash_profile` or `~/.bashrc`):
    
        
        function paring_w_main {
            git checkout main
            git pull
            git checkout $1
            git merge main
            git push
        }
                    
    
3.  Reload your Bash profile:
    
        source ~/.bash_profile
    
4.  Use the function by running the following command, replacing `<branch_to_merge>` with the name of the branch you want to merge:
    
        paring_w_main <branch_to_merge>
    

Example
-------

Suppose you want to merge the main branch into a branch named `feature-branch`. You would use the function as follows:

    paring_w_main feature-branch

Explanation
-----------

This function performs the following steps:

1.  Checks out the `main` branch.
2.  Pulls the latest changes from the remote `main` branch.
3.  Checks out the specified branch (provided as an argument to the function).
4.  Merges the `main` branch into the specified branch.
5.  Pushes the changes to the remote repository.
