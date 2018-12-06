<?php
/**
 * Created by PhpStorm.
 * User: GiBi
 * Date: 01.12.2018
 * Time: 17:38
 */
namespace app\models;
use yii\base\Model;

class SignupForm extends Model{

    public $username;
    public $password;

    public function rules() {
        return [
            [['username', 'password'], 'required', 'message' => 'Заполните поле'],
            ['username', 'unique', 'targetClass' => User::className(),  'message' => 'Этот логин уже занят'],
        ];
    }

    public function attributeLabels() {
        return [
            'username' => 'Login',
            'password' => 'Password',
        ];
    }

}