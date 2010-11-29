PhpDocTheme
==================

convert your PhpDocs to a nice ExtJs based API Documention.
It uses the same code as [http://dev.sencha.com/deploy/dev/docs/][1]

See [http://phpdoc.org/][2] how to use phpDocumentor

This theme was inspired by [http://zymengine.com/dev/news/30-phpdoc-extjs-converter-template][3]

Installation
-----------------
Copy Extjs folder to the phpDocumentor's "Converters/HTML/frames/"
directory, or symlink it.

Usage
-----------------
Simple write a config file (*phpdoc.ini*):

    directory   = lib,apps/frontend,config
    ignore      = /vendor/*, /test/*, /*/om/, /*/map/, /*/templates/
    target      = doc/phpdoc/
    quiet       = true
    title       = Your Project
    sourcecode  = on
    templatebase = ABSOLUTE/PATH/TO/THE/THEME/FOLDER
    output      = HTML:frames/Extjs:default
    readmeinstallchangelogSpecify = README

Use it as follows:

    phpdoc -c phpdoc.ini

Watch your generated phpdoc api:

    localhost:///path/to/doc/phpdoc/index.html


  [1]: http://dev.sencha.com/deploy/dev/docs/
  [2]: http://phpdoc.org/
  [3]: http://zymengine.com/dev/news/30-phpdoc-extjs-converter-template

