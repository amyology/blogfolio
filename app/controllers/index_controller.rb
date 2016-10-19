class IndexController < ApplicationController

  def index
    @skills = [
      'Ruby',
      'Rails',
      'Javascript',
      'AngularJS',
      'Vue.js',
      'C#',
      'HTML',
      'CSS',
      'Sass',
      'Git',
      'SQL',
      'PostGreSQL',
      'Photoshop',
      'Unity 3D',
    ]
  end

end
