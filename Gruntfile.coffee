module.exports = (grunt) ->

  grunt.initConfig
    less:
      src:
        files:
          'build/style.css': 'less/style.less'
    combine:
      dist:
        input: 'template.html'
        output: 'dist/template.html'
        tokens: [
          token: '{{css}}'
          file: 'build/style.css'
        ]
    watch:
      less:
        files: ['less/*.less']
        tasks: ['less:src']
      combine:
      	files: ['template.html', 'build/style.css']
      	tasks: ['combine:dist']

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-combine'
  grunt.registerTask 'default', ['less:src', 'combine:dist']
