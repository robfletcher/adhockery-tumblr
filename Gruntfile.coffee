module.exports = (grunt) ->

  grunt.initConfig
    less:
      dist:
        files:
          'css/theme.css': 'less/theme.less'
    combine:
      dist:
        input: 'src/template.html'
        output: 'dist/template.html'
        tokens: [
          token: '{{css}}'
          file: 'css/theme.css'
        ]
    watch:
      less:
        files: ['less/*.*']
        tasks: ['less']
      combine:
      	files: ['src/template.html', 'css/theme.css']
      	tasks: ['combine']

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-combine'
  grunt.registerTask 'default', ['less', 'combine']
