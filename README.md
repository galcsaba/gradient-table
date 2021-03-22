# gradient table

## Task description

Given an integer input N between decimal values 2 and 100, create a two-dimensional table of N x N size. 

Table columns should be marked with capital letters of the English alphabet, much like in an Excel or Google Spreadsheet: letter “A” through “Z”, then “AA”, “AB”, etc. Table rows should be marked with the ordinal value representing the number of row, starting from 1.

A table cell should be filled with a single solid color representing a linear gradient color value calculated as follows:

* The top left cell has a fixed RGB value of (255, 255, 255).
* The bottom right cell has a fixed RGB value of (255, 0, 0).
* Any other cell color should be calculated as a linear gradient value based on the cell’s distance from the top left and the bottom right anchor cells.

The user should be able to enter the N value into an input field, and create the corresponding table by pressing a button. N should be validated to match the following conditions: N is integer, 2 <= N <= 100.

The resulting table should reasonably fit the screen - if the screen is too small to display the characters in column or row headers, scrolling is permitted. 

## Other requirements

The task shall be implemented with Dart (version >= 2.0.0) programming language and Angular Dart (version >= 5.0.0) framework, as a web project. 

The program shall behave identically in all modern browsers (last two versions of Chrome, Firefox and Safari + latest Edge).

Submitted code should adhere to Dart and Angular best practices and style guides.

The solution should be submitted as a public Github repository url.




A web app that uses [AngularDart](https://angulardart.dev) and
[AngularDart Components](https://angulardart.dev/components).

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).
