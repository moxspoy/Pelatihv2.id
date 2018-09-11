<?php
/**
 * Created by PhpStorm.
 * User: MNurilmanBaehaqi
 * Date: 9/10/2018
 * Time: 11:20 AM
 */

class MY_Loader extends CI_Loader {
	public function template($template_name, $vars = array(), $return = FALSE)
	{
		if($return):
			$content  = $this->view('layout/head', $vars, $return);
			$content  = $this->view('layout/nav', $vars, $return);
			$content .= $this->view($template_name, $vars, $return);
			$content .= $this->view('layout/footer', $vars, $return);

			return $content;
		else:
			$this->view('layout/head', $vars);
			$this->view('layout/nav', $vars);
			$this->view($template_name, $vars);
			$this->view('layout/footer', $vars);
		endif;
	}
}
