<?php
class ControllerCommonHome extends Controller {
    public function index() {
        $this->document->setTitle($this->config->get('config_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));

        $home = $this->config->get('config_home');

        $this->data['home'] = html_entity_decode($home[$this->config->get('config_language_id')], ENT_QUOTES);

        $this->data['header'] = $this->load->controller('common/header');
        $this->data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->render('common/home.tpl'));
    }
}