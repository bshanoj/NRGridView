
#NRGridView

iOS 4.0 minimum.

##License

Without any further information, all the sources provided here are under the MIT License quoted in NRGridView/LICENSE.

##What is NRGridView

NRGridView is a grid-view UI component (built as a static library) which has been developed by Louka Desroziers, for Novedia Regions.
How it works? Almost like UITableView works. You set a dataSource, and a delegate.. and you implement all @required methods.
It also has a 'layoutStyle'. It means you can use it as a vertical gridView, or horizontal grid-view!

If you got any suggestions, or if you need more UITableView-like methods, do not hesitate to email me at l.desroziers@novediagroup.com

##Latest Changelog
####Added

enum{
    NRGridViewScrollPositionNone,   // Please refer to UITableViewScrollPositionNone's description.
    NRGridViewScrollPositionAtTop,
    NRGridViewScrollPositionAtLeft  = NRGridViewScrollPositionAtTop,    	NRGridViewScrollPositionAtMiddle,
    NRGridViewScrollPositionAtBottom,
    NRGridViewScrollPositionAtRight = NRGridViewScrollPositionAtBottom 
};
typedef NSInteger NRGridViewScrollPosition;

- (void)selectCellAtIndexPath:(NSIndexPath*)indexPath 
                     animated:(BOOL)animated;
- (void)selectCellAtIndexPath:(NSIndexPath*)indexPath 
                   autoScroll:(BOOL)autoScroll
               scrollPosition:(NRGridViewScrollPosition)scrollPosition
                     animated:(BOOL)animated;

- (CGRect)rectForHeaderInSection:(NSInteger)section;
- (CGRect)rectForSection:(NSInteger)section;
- (CGRect)rectForItemAtIndexPath:(NSIndexPath*)indexPath;

- (void)scrollRectToSection:(NSInteger)section 
                   animated:(BOOL)animated
             scrollPosition:(NRGridViewScrollPosition)scrollPosition;

- (void)scrollRectToItemAtIndexPath:(NSIndexPath*)indexPath 
                           animated:(BOOL)animated
                     scrollPosition:(NRGridViewScrollPosition)scrollPosition;


##Comments

This component has been developed for Novedia Regions, a french company which develops apps for mobile devices.

Referencing this project in your AboutBox is appreciated.
Please tell me if you use this class so we can cross-reference our projects.

Enjoy, and share ;)