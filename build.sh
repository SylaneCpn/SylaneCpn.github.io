#!/bin/bash
dx bundle --platform web --release
cp -r target/dx/sylane-website/release/web/public/* docs/
cp docs/index.html docs/404.html