"using strict";

require(["base/js/events"], function (events) {
  $([IPython.events]).on('app_initialized.NotebookApp', function(){
    IPython.load_extensions('usability/hide_input/main')
    IPython.load_extensions('usability/execute_time/ExecuteTime')
    IPython.load_extensions('usability/python-markdown/main')
    IPython.load_extensions('toc')
  });
});
