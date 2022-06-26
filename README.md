# Markdown to HTML with CSS

## About
A Markdown to HTML script that can convert more than 1 markdown files into html.

* Converts more than one file
* Uses Github Markdown (Can be changed to plain markdown)
* Use your own custom CSS instead of the defaultly generated CSS

## Requirments

* markdown 
* pandoc
* basename

## Usage

``` bash
git clone https://github.com/systemcoding/md2html-with-css/
cd md2html-with-css/
./convert.sh [--dest dir] file1.md file2.md ...
```

Quick Example:

```bash
./convert.sh --dest ./posts/ ./md/*.md
```

Here the `./posts/` directory is where the HTML files will be placed and `./md/*.md` is where all the Markdown files are located

## Credits:
Thanks to [hkim0331](https://github.com/hkim0331/md2html) for the script and helping in expanding it!
