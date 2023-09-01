# Script: Git Automation Script

This script is designed to automate various tasks related to creating, editing, and managing files in a Git repository. It provides options for adding content to a file, setting file permissions, compiling C source files, and pushing changes to a remote repository using Git.

## Features

1. **File Creation and Editing**: The script allows you to create a new file using the `touch` command. If the file is empty, you can choose to add content to it using a selection of text editors including vi, emacs, nano, and nvim.

2. **Editing Existing Files**: If the file already exists, the script gives you the option to edit its contents using the same set of text editors.

3. **File Permissions**: You can choose to set permissions for the file. You can either input numerical permission values (e.g., 755) or set execute permissions for the owner.

4. **C Source Compilation**: If the provided filename has a ".c" extension, the script compiles it using the `gcc` compiler and generates an executable with the same name (without the ".c" extension).

5. **Git Integration**: The script integrates with Git for version control. It automatically adds the file to the Git repository, prompts you for a commit message, commits the changes locally, and then pushes the changes to a remote repository.

### Setup Process To Run Locally

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/Josephjbassey/GitAutomationSuite.git
   ```


2. **Navigate to the Script Directory:**

   ```bash
   cd GitAutomationSuite
   ```


3. **Make the Script Executable:**

   Ensure that the script is executable by running the following command:

   ```bash
   chmod +x script.sh
   ```


4. **Move the Script to a Directory in Your PATH:**

   To make the script globally accessible, move it to a directory that's in your system's PATH. You can use a system-wide directory like `/usr/local/bin` or a user-specific directory like `~/bin`. Replace `custom-script-name` with the desired name for your script.

   ```bash
   mv script.sh /usr/local/bin/custom-script-name
   ```

   Or for a user-specific directory:

   ```bash
   mv script.sh ~/bin/custom-script-name
   ```

6. **Run the Script:**

   You can now run the script from any location on your system using the custom name you assigned. For example:

   ```bash
   custom-script-name my_file
   ```

   Replace `custom-script-name` with the name you chose and `my_file` with the name of the file you want to create or work with.

7. **Follow the Prompts:**

   The script will prompt you to select your preferred text editor and guide you through the process.

8. **Complete the Task:**

   Follow the on-screen instructions to complete the task. If you choose to push changes to a remote repository, you'll be prompted for a commit message.

That's it! Your Git automation script is set up and globally accessible on your system.

## Notes

- You can choose from the following text editors: vi, emacs, nano, and nvim.
- Be cautious when setting file permissions and pushing changes to remote repositories.
- You can repeat the same process for the c file compilation script

## Requirements

- Bash shell environment
- Git
- gcc (if compiling C source files)

## Authors

- [@josephjbassey](https://www.github.com/josephjbassey)


