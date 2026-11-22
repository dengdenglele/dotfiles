# Firefox config

## Got to `about:config`
- Disable AV1 support on unsupported devices
  - `media.av1.enable` &rarr; `false`
- Force videos to only go fullscreen in sway container
  - `full-screen-api.ignore-widgets` &rarr `true`
  - [reddit](https://www.reddit.com/r/swaywm/comments/mjgjtr/keep_full_screen_inside_container/)
  - [reddit2](https://www.reddit.com/r/swaywm/comments/1gv48ts/application_fullscreen_without_actually_making/)

## Add duck.ai as search engine
```
# Add the following string as URL to firefox search engines
https://duck.ai/chat?origin=funnel_home_website&hps=1&home=1&prompt=1&q=%s&atb=v514-1
```
- [reddit](https://www.reddit.com/r/duckduckgo/comments/1qjo6p6/can_i_add_duckai_as_a_search_engine_in_firefox/)
