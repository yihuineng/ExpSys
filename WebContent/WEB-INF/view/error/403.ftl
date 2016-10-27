<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>» Page not found</title>
	<style>
		html {
			width: 100%;
			height: 100%;
			margin: 0;
			padding: 0;
		}

		body {
			width: 100%;
			height: 100%;
			margin: 0;
			padding: 0;
		}

		div.container {
			display: -webkit-box;
			-webkit-box-orient: horizontal;
			-webkit-box-pack: center;
			-webkit-box-align: center;
			display: -moz-box;
			-moz-box-orient: horizontal;
			-moz-box-pack: center;
			-moz-box-align: center;
			height: 100%;
			width: 100%;
		}

		div#container_403 {
			position: relative;
		}

		@-moz-keyframes maze_animation {
			0% {
				-moz-transform: rotate(360deg)
			}
			100% {
				-moz-transform: rotate(0deg)
			}
		}

		@-webkit-keyframes maze_animation {
			0% {
				-webkit-transform: rotate(360deg)
			}
			100% {
				-webkit-transform: rotate(0deg)
			}
		}

		div#maze {
			width: 173px;
			height: 163px;
			margin-bottom: 30px;
			margin-left: auto;
			margin-right: auto;
			-webkit-animation: maze_animation 3s;
			-webkit-animation-iteration-count: infinite;
			-webkit-animation-timing-function: linear;
			-moz-animation: maze_animation 3s;
			-moz-animation-iteration-count: infinite;
			-moz-animation-timing-function: linear;
		}
	</style>
</head>
<body>
	<div class="container">
		<div id="container_403">
			<div id="maze">
				<img src="${CONTEXT_PATH}/platform/error_files/maze.png">
			</div>
			<div id="message">
				<a href="http://localhost:8080/">
					<img src="${CONTEXT_PATH}/platform/error_files/403.jpg">
				</a>
			</div>
		</div>
	</div>
</body>
</html>
