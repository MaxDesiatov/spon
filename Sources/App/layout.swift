import HypertextLiteral

func layout(root: String, body: HTML) -> HTML {
  #"""
    <html>
      <head>
          <meta charset="utf-8" />
          <meta name="viewport" content="width=device-width, initial-scale=1" />
          \#([16, 32, 96].map { side -> HTML in
            let size = "\(side)x\(side)"
            return #"""
            <link
              rel="icon"
              type="image/png"
              sizes="16x16"
              href="\#(root)/static/imgs/favicon-\#(size).png" />
            """#
            }
          )
          <link rel="apple-touch-icon" href="\#(root)/static/imgs/apple-icon-270x270.png" />
          <link
              rel="apple-touch-icon"
              sizes="180x180"
              href="{{root}}/static/imgs/apple-icon-180x180.png"
          />

          {% block title %}
          <title>{{_cfg("your-name")}} – Support My Work</title>
          {% endblock %}
          <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
          <link rel="stylesheet" href="{{root}}/static/styles/fonts.css">
          <link rel="stylesheet" href="{{root}}/static/styles/style.css">
          {% block styles %}{% endblock %}
      </head>
      <body>
          {% block body %}
          <div class="container">
              {% block container %}
              {% endblock %}
          </div>
          {% endblock %}
          <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
          <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
          {% block scripts %}{% endblock %}
      </body>
  </html>
  """#
}
