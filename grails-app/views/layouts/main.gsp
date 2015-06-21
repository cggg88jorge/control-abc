<html>
<head>
  <title>. : <g:layoutTitle default="Welcome"/> : .</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <r:require modules="bootstrap"/>
   <r:layoutResources/>
</head>
<body>
  <nav class="navbar navbar-default">
        <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/controlAbc">Brand</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sitios<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><g:link controller="site" action="create">Nuevo</g:link></li>
                  <li role="separator" class="divider"></li>
                  <li><g:link controller="site" action="index">Lista</g:link></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Registros<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><g:link controller="record" action="create">Nuevo</g:link></li>
                  <li role="separator" class="divider"></li>
                  <li><g:link controller="record" action="index">Lista</g:link></li>
                </ul>
              </li>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>
  <g:layoutBody/>
  <r:layoutResources/>
</body>
</html>