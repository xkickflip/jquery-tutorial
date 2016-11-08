# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Make the checkboxes alert when clicked first to see how this works...
#
# $(function() {
#     $('.edit_task input[type=checkbox]').click(function() {
#         alert('clicked');
#     });
# });

# Now in coffeescript
# $ ->
#   $('.edit_task input[type=checkbox]').click ->
#     alert 'Clicked'


# Now use this to submit the form and hit the buttons when clicks
# $(function() {
#     $('.edit_task input[type=submit]').remove();
#     $('.edit_task input[type=checkbox]').click(function() {
#         $(this).parent('form').submit();
#     });
# });

# in coffee, but the issue now is that when adding new tasks the update buttons
# still appears and stuff, so consolidate this further..
# $ ->
#   $('.edit_task input[type=submit]').remove()
#
#   $('.edit_task input[type=checkbox]').on 'click', ->
#     $(@).parent('form').submit()


# jQuery.fn.submitOnCheck = function() {
#     this.find('input[type=submit]').remove();
#     this.find('input[type=checkbox]').click(function() {
#         $(this).parent('form').submit();
#     });
#     return this;
# }
#
# $(function() {
#     $('.edit_task').submitOnCheck();
# });


$.fn.submitOnCheck = ->
  @.find('input[type=submit]').remove()
  @.find('input[type=checkbox]').on 'click', ->
    $(@).parent('form').submit()
  this

$ ->
  $('.edit_task').submitOnCheck()
