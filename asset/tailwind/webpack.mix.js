const mix = require("laravel-mix");

mix
  .postCss("src/css/tailwind.css", "css", [
    require("tailwindcss"),
  ]);