<?php
class ControllerCommonFooter extends Controller {
    public function index() {
        $this->load->language('common/footer');

       

        return $this->render('common/footer.tpl');
    }
}