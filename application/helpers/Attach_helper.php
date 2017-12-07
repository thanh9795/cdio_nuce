<?php 


if (!function_exists('attach')) {
	function attach($obj) {

		if ($obj->type==2) {
			$name=explode('/', $obj->link);
			$name=end($name);
			//$name=end(explode('/', $obj->link));
			return "<a href=\"".base_url($obj->link)."\">{$name}</a>";
		}else{
			return "<a href=\"{$obj->link}\">".substr($obj->link, 0,20)."</a>";
		}
	}
}

?>
