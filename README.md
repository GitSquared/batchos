# BatchOS

I found this while cleaning out some ancient Dropbox account. It's a 13k lines [batch file](https://en.wikipedia.org/wiki/Batch_file) "compiled" with some [weird niche software](http://bc.gotek.info/) that emulates a unix-like "operating system" (a few commands on a CLI shell).

I wrote this back in 2016 while bored as shit in some high school classroom.

It has some interestingly horrible features like storing passwords in cleartext in `%APPDATA%` and an ftp-based package manager - which sadly doesn't work anymore as the infrastructure powering it died a long time ago.

![Starting up.](https://github.com/GitSquared/batchos/raw/master/screens/boot_log.png)

The boot log at the start [might remind you of something](https://gaby.dev/edex). It's actually from the [Hacknet](https://en.wikipedia.org/wiki/Hacknet) hacker-simulation video game that came out just the year before, in 2015.

![IDENTIFY YOURSELF, PROGRAM.](https://github.com/GitSquared/batchos/raw/master/screens/broken_login.png)

For some reason the color display is broken on my modern, high-DPI laptop. The script renders on a 25x80 surface.

![The prompt. B:)](https://github.com/GitSquared/batchos/raw/master/screens/prompt.png)

The main prompt screen, right after login. The script creates a unix-like root directory structure at `%APPDATA%\BatchOS` and mounts it to a `B:` drive using [subst](https://en.wikipedia.org/wiki/SUBST), so the path on the prompt is actually the real [cwd](https://en.wikipedia.org/wiki/Working_directory) of the script.

Notice how the prompt ends with a right parenthesis `)` instead of the habitual chevron `>`. I suspect this is because running `echo $pwd$>` will understand `>` as an [stdout redirection](https://en.wikipedia.org/wiki/Redirection_(computing)), and I wasn't smart enough to put it inside [double quotes](https://en.wikipedia.org/wiki/String_literal#Escape_sequences).

![The BPM package manager's help section.](https://github.com/GitSquared/batchos/raw/master/screens/)

Here you can see the help page for `bpm`, the integrated package manager. Unfortunately the `http://batchos.run` page hasn't been archived by the [Wayback Machine](https://web.archive.org)... It was a [PHPbb](https://en.wikipedia.org/wiki/PhpBB) board where anybody could submit programs to be available through BPM.

I don't think anyone ever did 😅
