# Script | Merge Latest Remote Branch Into Current Branch 
While working in feature branches, We're often required to update our feature branches with `main` or a source branch. Instead of having to write git commands everytime, the script automates the process.
Script to automatically merge remote branch into current branch instead of having to type all commands separately. 

# To Run: 
- `cd` into a project directory haivng `.git` directory.
- run `bash merge-branch.sh <your-merge-branch>`.
- This will ask you for confirmation after info. 
- Press `'y'` and it'll run git commands to merge latest `<your-merge-branch>` into `current branch`.
