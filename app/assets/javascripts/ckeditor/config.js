CKEDITOR.editorConfig = function( config ) {
  config.toolbarGroups = [
    { name: 'document', groups: [ 'mode', 'doctools', 'document' ] },
    { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
    { name: 'styles', groups: [ 'styles' ] },
    { name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
    { name: 'tools', groups: [ 'tools' ] },
    '/',
    { name: 'colors', groups: [ 'colors' ] },
    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
    { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
    { name: 'links', groups: [ 'links' ] },
    { name: 'insert', groups: [ 'insert' ] },
    '/',
    { name: 'forms', groups: [ 'forms' ] },
    { name: 'others', groups: [ 'others' ] },
    { name: 'about', groups: [ 'about' ] }
  ];

  config.removeButtons = 'Print,NewPage,Source,Templates,Cut,Copy,Paste,SelectAll,Scayt,Form,TextField,Radio,Checkbox,Textarea,Button,ImageButton,HiddenField,BidiLtr,BidiRtl,Language,Anchor,SpecialChar,Iframe,About,Select';
};
