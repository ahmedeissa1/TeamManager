//
//  TMControlVariables.h
//  TeamManager
//
//  Created by Will Block on 10/15/13.
//  Copyright (c) 2013 William Block. All rights reserved.
//

#ifndef TeamManager_TMControlVariables_h
#define TeamManager_TMControlVariables_h

// iPhone constants for horizontal table scroll

// Width (or length before rotation) of the table view embedded within another table view's row
#define kTableLength 320

// Width of the cells of the embedded table view (after rotation, which means it controls the rowHeight property)
#define kCellWidth 106
// Height of the cells of the embedded table view (after rotation, which would be the table's width)
#define kCellHeight 106

// Padding for the Cell containing the article image and title
#define kArticleCellVerticalInnerPadding 3
#define kArticleCellHorizontalInnerPadding 3

// Padding for the title label in an article's cell
#define kArticleTitleLabelPadding 4

// Vertical padding for the embedded table view within the row
#define kRowVerticalPadding 0
// Horizontal padding for the embedded table view within the row
#define kRowHorizontalPadding 0

// The background color of the vertical table view
#define kVerticalTableBackgroundColor [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0]

// Background color for the horizontal table view (the one embedded inside the rows of our vertical table)
#define kHorizontalTableBackgroundColor [UIColor colorWithRed:0.5 green:0.5 blue:0.5 alpha:1.0]

// The background color on the horizontal table view for when we select a particular cell
#define kHorizontalTableSelectedBackgroundColor [UIColor colorWithRed:236.0/255.0 green:240.0/255.0 blue:241.0/255.0 alpha:1.0]

#endif
