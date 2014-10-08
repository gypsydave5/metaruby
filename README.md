# metaruby

Metaprogramming in Ruby.

Here, we've used `method_missing` to create methods
on-the-fly that allow you to award a student with a badge (which we love doing
at Makers Academy). Once you've awarded a badge, that student object will then
respond to `has_BADGENAME?` with `true`, unless you drop that badge from the
student's @badges array.