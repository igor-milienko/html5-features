<!DOCTYPE html>
<html>
<head>
    <title>HTML5 Features</title>
    <link rel="stylesheet" href="static/css/styles.css"/>
</head>

<body>
<h2 class="title">HTML5 Features</h2>
<nav class="navigation">
    <ul class="navigation__list">
        <li class="navigation__list_item"><a href="/page_1">Page 1</a></li>
        <li class="navigation__list_item"><a href="/page_2">Page 2</a></li>
        <li class="navigation__list_item"><a href="/page_3">Page 3</a></li>
    </ul>
</nav>
<main id='content' class="content">
    Page 1
</main>
<script src="static/js/html5_router.js"></script>
<script>
    router({
        "/": "Page 1",
        "/page_1": "Page 1",
        "/page_2": "Page 2",
        "/page_3": "Page 3"
    });
</script>
</body>
</html>
