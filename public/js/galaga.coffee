$.fn.galagable = (opts = {}) ->

  if $('audio#galaga').size() == 0
    sound = $("<audio id='galaga' preload='auto'><source src='sounds/explosion.mp3' /><source src='sounds/explosion.ogg' /></audio>")
    $('body').append(sound)

  sound = $('audio#galaga')

  @each ->
    self = $(@)
    self.click =>
      width = self.width()
      self.css 'backgroundImage', 'none'
      self.stop()
      self.html "<img src='img/galaga_explosion.png' width=#{width}/>"
      sound.get(0).play()
      setTimeout ->
        self.remove()
      , 2000

  @

$('.helicopter').galagable()