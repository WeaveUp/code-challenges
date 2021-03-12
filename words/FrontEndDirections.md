Technical Spec
----------------

Write a webpage which, via javascript, can fetch a remote dictionary, and update the html with two lists (does not have to be `<li>`s, use your own judgement for UI), 'sequences' and 'words'. Sequences should contain every sequence of four letters that appears in exactly one word of the dictionary. Words should contain the corresponding words that contain the sequences, in the same order.

For example, given the trivial dictionary containing only the following words:

```
arrows
carrots
give
me
```

The expected output would be:

sequences
```
carr
rrot
rots
rows
rrow
give
```

words
```
carrots
carrots
carrots
arrows
arrows
give
```

In the above example, 'arro' does not appear in the output. This is because it is found in more than one word (cARROts, ARROw).

For the final solution, fetch the dictionary file in this repo.
