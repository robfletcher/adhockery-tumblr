module.exports = (grunt) ->

  grunt.initConfig

    compass:
      dist:
        src: 'sass'
        dest: 'css'
        images: 'images'
        outputstyle: 'compact'
        linecomments: false

    combine:
      dist:
        input: 'src/template.html'
        output: 'dist/template.html'
        tokens: [
          token: '{{css}}'
          file: 'css/theme.css'
        ]

    watch:
      compass:
        files: ['sass/**/*.{scss,sass}']
        tasks: 'compass'
      combine:
      	files: ['src/*', 'css/*']
      	tasks: 'combine'

  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-compass'
  grunt.loadNpmTasks 'grunt-combine'
  grunt.registerTask 'default', ['compass', 'combine']
