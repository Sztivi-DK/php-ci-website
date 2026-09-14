<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        return view('dashboard');
    }

    public function articles(): string
    {
        return view('articles/article-list');
    }

    public function contacts(): string
    {
        return view('contacts/contact-list');
    }
}