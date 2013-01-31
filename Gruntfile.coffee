module.exports = (grunt) ->

  grunt.initConfig
    less:
      src:
        files:
          'build/style.css': 'less/style.less'
    watch:
      less:
        files: ['less/*.less']
        tasks: ['less:src']

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.registerTask 'default', ['less:src']
