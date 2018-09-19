# Project description:

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

### Test steps

```bash
$ cd etol
$ make
$ ./run < ../README.md > ../leet.txt
$ cd ../ltoe
$ make
$ ./run < ../leet.txt
```