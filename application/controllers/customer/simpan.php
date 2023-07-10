<?php
defined('BASEPATH') or exit('No direct script access allowed');

class simpan extends CI_Controller
{
    public function index(){
        // $wishlistModel = new WishlistModel();
        // $wishlistItems = $wishlistModel->findAll();

        // return view('wishlist/index', ['wishlistItems' => $wishlistItems]);
        $this->load->view('navbar_user');
        $this->load->view('user/favorite');
        $this->load->view('user/footer');
    }

    public function addFavorite($id){

    }

    public function removeFavorite(){
        
    }
}   