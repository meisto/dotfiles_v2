-- author: meisto
-- date: 2024-01-23 22:13:53

-- Line Brak Shortcut
lb = t({"", ""})
return {
   -- s("trigger_name", {
   -- t("static text"),
   -- t({ "static text with", "linebreak"})
   -- i(1), -- First placeholder
   -- i(2, "// Some value), -- Second placeholder with default value
   -- i(0), -- Last Placeholder
   -- f(fn, 2), -- Function, first parameter is a function, second paramtere is the placeholder it
   -- uses as input
   -- })
   s("blank", {
      t("<script lang=\"ts\">"),
      lb,
      i(1, "\t//Scripts"),
      lb,
      t("</script>"),
      t({"", "", ""}),
      t("<div class=\""), i(2), t("\">"),
      lb,
      i(3),
      lb,
      t("</div>")
   }),
   s("cl", {t("console.log(\""), i(1), t("\");")})
}
