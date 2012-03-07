# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

cookie_user_id = "user_id"
cookie_expire_days = 365

window.onload = () ->
  user_selector = document.forms[0].children["post[user_id]"]
  saved_id = jQuery.cookie(cookie_user_id)

  # 保存されているユーザーを選択
  # そのユーザーが削除されている場合は先頭のユーザーになる
  for option, i in user_selector.children
    if option.value == saved_id
      user_selector.selectedIndex = i

  # 選択したユーザーをCookieに保存
  user_selector.onchange = () ->
    index = this.selectedIndex
    jQuery.cookie(cookie_user_id, this.options[index].value, expires: cookie_expire_days)
