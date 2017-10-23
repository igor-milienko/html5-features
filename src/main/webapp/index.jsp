<!DOCTYPE html>
<html>
<head>
    <title>HTML5 Features</title>
</head>

<body>
<h2>HTML5 Features</h2>
<nav>
    <ul>
        <li><a href="/page_1">Page 1</a></li>
        <li><a href="/page_2">Page 2</a></li>
        <li><a href="/page_3">Page 3</a></li>
    </ul>
</nav>
<main id='content'>
    Page 1
</main>
<script src="static/js/html5_router.js"></script>
<script>
    router({
        "/": "Page 1",
        "/page_1": "Page 1",
        "/page_2": "PAge 2",
        "/page_3": "Page 3"
    });
</script>
</body>
</html>
