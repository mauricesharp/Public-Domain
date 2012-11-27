This is a very simple wrapper around one class and one category that will take
care of 90% or so of adapting your app to 3.5 and 4 inch displays.

Most of the work of adapting to 4-inch displays is taken care of by one or both
of:
Move a view by either the full or half the delta between 3.5 and 4 inch displays
Resize a view by either the full or half delta

For the views that move and/or resize, they will do so either once, that is at
viewDidLoad: time, or dynamically, any time a change occurs.

The KLMScreenResizeViewController class is designed to be a superclass of any
view controller that needs to either move and/or resize views. There are two
sets of 4 Outlet collections:
views that need to move the full delta
views that need to move half the delta
views that need to resize by the full delta
views that need to resize by half the delta

One set of outlets is for static views, the other for dynamic views.

All you need to do is include the class in the tree, then use interface builder
to drag connections to views that need to move and/or resize. The class will
do the rest for static views. You can call one of the methods on the instance
methods to force an update and do some other things... at the moment there is
sketchy documentation, but it should be enough.

To make things easier, I also use a cateogry or UIView (UIView+KLM) to make it
easier to move and resize views in the Y dimension.

This is meant to be a more full sample illustrating all the conditions,
including the need to use custom views in a 3.5 versus 4-inch screen, but I
have not had time to finish it. And there is a clear need.

Look at the KLMScreenResizeViewController class and you will see the outlets
and methods you need. If all you are doing is static moving/resizing, all you
need to do is inherit from that class, drag out the connections, and you are
done. The class will do all the work.

Enjoy and feedback welcome.

Maurice Sharp
Manager Mobile Development, Couchsurfing
Principal/Founder, KLM Apps
Wrapped-Around-Her-Little-Finger Father of a Precocious 9YO Daughter
    (my most important role)
