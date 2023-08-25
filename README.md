# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement.
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
- Send the fixed file back to the recruiter.

# Below problems or changes required after Reviewing code:

- Increment count states are not managed properly based on functionality
- Business logic is not separated
- Minimize usage of stateful widget - use stateless widget instead.
- ListWidget and ListItemWidget classes are not in separate files
- For Loop is not required to add multiple ListItem widget as ListView.Builder will populate number of widgets once we give item count to it
- Container widget can be replaced with Padding widget as don't have other styles to implement
- Widget tree & code is not properly formatted

# Below improvements and changes are done to overcome problems

- Bloc Pattern used to handle states, to separate business logic and state management
- ListWidget and ListItemWidget classes separated with files as for extension and code separation purpose
- List<Widget> is not required to add in ListView as ListView.Builder will automatically populate widgets with builder method based on item count set
- Used BlocProvider, BlocSelector handlers are used to retrieve list and update counter based on list item
- const modifier added with appropriate widget to optimize memory
- Container widget is replaced by Padding widget as currently no other styling mention in code - this can be changed based on future requirement
- Used TextButton widget instead of MaterialButton to get proper button touch feeling 
- Code & Widget tree formatted