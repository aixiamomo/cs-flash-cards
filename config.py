# -*- coding: utf-8 -*-
import os

basedir = os.path.abspath(os.path.dirname(__file__))

SECRET_KEY = 'you-will-never-guess'
CSRF_ENABLED = True

DATABASE = os.path.join(basedir, 'cards.db')
USERNAME = 'admin'
PASSWORD = 'default'
