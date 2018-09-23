# Project description

- Convert English words to leet1337. Encode the message.
- Convert Leet1337 to English words. Decode the message.

## What is the feature for this project?

- It can deal with the Punctuation Mark: ['/!:,!-\.?";()—]
- It looks beautiful becasue I have flip some letter.
- It can deal with the digit. [0-9]

## Applicaton Manual(Use README file to test this project.)

### Install flex on Ubuntu16.04

```bash
sudo apt-get install flex
```

### Download this project

```bash
git clone git@github.com:guozetang/convertleet1337_english.git
```

### Test steps

There are two way to test this project.
First way - Use the shell scripting.

`./test.sh`

This shell script will generate these two files.

- README_leet: Convert from the README file.
- README_restore: Restore by README_leet.

Just need to compare the README_restore with the README to test this project.

```bash
diff README README_restore
```

Second way:

```bash
cd etol
make
./run < ../README.md > ../leet.txt
cd ../ltoe
make
./run < ../leet.txt
```
