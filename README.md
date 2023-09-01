# Script: Git Automation Script

This script is designed to automate various tasks related to creating, editing, and managing files in a Git repository. It provides options for adding content to a file, setting file permissions, compiling C source files, and pushing changes to a remote repository using Git.

## Features

1. **File Creation and Editing**: The script allows you to create a new file using the `touch` command. If the file is empty, you can choose to add content to it using a selection of text editors including vi, emacs, nano, and nvim.

2. **Editing Existing Files**: If the file already exists, the script gives you the option to edit its contents using the same set of text editors.

3. **File Permissions**: You can choose to set permissions for the file. You can either input numerical permission values (e.g., 755) or set execute permissions for the owner.

4. **C Source Compilation**: If the provided filename has a ".c" extension, the script compiles it using the `gcc` compiler and generates an executable with the same name (without the ".c" extension).

5. **Git Integration**: The script integrates with Git for version control. It automatically adds the file to the Git repository, prompts you for a commit message, commits the changes locally, and then pushes the changes to a remote repository.

## How to Use

1. Run the script by providing the desired filename as an argument. For example:

   ```bash
   ./script.sh my_file
   ```
   ```bash
   ./c_compiler.sh my_cfile
   ```

2. Follow the prompts to create or edit the file, add content, set permissions, compile C source files (if applicable), and choose whether to push changes to the remote repository.

3. When prompted for a commit message, the selected text editor (chosen at the beginning) will open. Write a descriptive commit message, including any necessary details, and save the file.

4. The script will commit the changes locally and push them to the remote repository.

## Notes

- You can choose from the following text editors: vi, emacs, nano, and nvim.
- Be cautious when setting file permissions and pushing changes to remote repositories.

## Requirements

- Bash shell environment
- Git
- gcc (if compiling C source files)

## Authors

- [@josephjbassey](https://www.github.com/josephjbassey)

## License

This script is provided under the [MIT License](https://choosealicense.com/licenses/mit/)
