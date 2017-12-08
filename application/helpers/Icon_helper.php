<?php

if (!function_exists('get_icon')) {
	function get_icon($ext) {
		if (in_array($ext, ['doc', 'docx'])) {
			return "assets/build/images/Default-Doc.png";
		}
		if (in_array($ext, ['xls', 'xlsx'])) {
			return "assets/build/images/excel.png";
		}
		if (in_array($ext, ['png', 'jpg', 'gif'])) {
			return "assets/build/images/png-icon.png";
		}
		if (in_array($ext, ['ppt', 'pptx'])) {
			return "assets/build/images/pwp.png ";
		}
		if (in_array($ext, ['pdf'])) {
			return "assets/build/images/Default-PDF.png";
		}
		if (in_array($ext, ['zip', 'rar', '7z', 'tar', 'gz'])) {
			return "assets/build/images/Default-Zip.png";
		}
		return "assets/build/images/DEFAULT.png";
	}
}
?>