# jekyll-htmlpreview

This is a Jekyll tag allowing you to comfortably insert frames into your
content. It is designed to be used for things like live previews of code.

## Usage

1. Move `htmlpreview.rb` into your plugins folder.
2. Configure the paths in your `_config.yml` (See [Settings](#settings)).
3. Insert a example into content like this: `{% htmlpreview i-am-a-unique-identifier %}`

## Settings

```yaml
# ...

htmlpreview:
  source: "http://example.com/codeexamples/%s/" # '%s' is replaced with the identifier
  format: '<figure><iframe src="%s"></iframe>'  # '%s' is replaced with 'source'

  # Set 'source' to the desired `src` format for the frames, 'format' to the desired markup.
```
