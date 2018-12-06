<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\db\ActiveRecord;

/**
 * ContactForm is the model behind the contact form.
 */
class ContactForm extends ActiveRecord
{
    public $name;
    public $Secondname;
    public $email;
    public $subject;
    public $body;
    public $verifyCode;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            // name, email, subject and body are required
            [['name','Secondname', 'email', 'subject', 'body'], 'required'],
            // email has to be a valid email address
            ['email', 'email'],
            // verifyCode needs to be entered correctly
            ['verifyCode', 'captcha'],
            //phone needs to be like a mask
            ['subject', 'match', 'pattern' => '/^\+7\s\([0-9]{3}\)\s[0-9]{3}\-[0-9]{2}\-[0-9]{2}$/', 'message' => 'Телефон, должен быть в формате +7 (999) 999-99-99'],
            ['body', 'match', 'pattern' => '/.{100,}/', 'message' => 'Минимальное количество символов 100'],
            ['name', 'match', 'pattern' => '/^[А-ЯЁA-Z]{1}+[а-яА-ЯёЁa-zA-Z0-9]{3,}+$/u', 'message' => 'Минимальное количество символов 3, никаких специальных символов, первый символ заглавный'],
            ['Secondname', 'match', 'pattern' => '/^[А-ЯЁA-Z]{1}+[а-яА-ЯёЁa-zA-Z0-9]{3,}+$/u', 'message' => 'Минимальное количество символов 3 и никаких специальных символов, первый символ заглавный'],
        ];
    }

    /**
     * @return array customized attribute labels
     */
    public function attributeLabels()
    {
        return [
            'verifyCode' => 'Verification Code',
            'name' => 'Имя',
            'email' => 'Адрес электронной почты',
            'body' => 'Текстовое поле',
            'subject' => 'Телефон',
            'Secondname' => 'Фамилия',
        ];
    }

    /**
     * Sends an email to the specified email address using the information collected by this model.
     * @param string $email the target email address
     * @return bool whether the model passes validation
     */
    public function contact($email)
    {
        if ($this->validate()) {
            Yii::$app->mailer->compose()
                ->setTo($email)
                ->setFrom([$this->email => $this->name])
                ->setFrom([$this->email => $this->Secondname])
                ->setSubject($this->subject)
                ->setTextBody($this->body)
                ->send();

            return true;
        }
        return false;
    }
}
