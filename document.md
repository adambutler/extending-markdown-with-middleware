# Hello world

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

## Partials

```partial
source: /partials/my-document.md
```

## Slugified heading IDs

All of the headings in this document will have IDs

## Dynamic content

The current year is $CURRENT_YEAR.

Here is an example code block:

```
curl -X "POST" "https://example.com/" \
 -H "X-Api-Key: $API_KEY" \
 -d "text=Hello $USERNAME"
```
