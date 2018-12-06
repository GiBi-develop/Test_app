<?php
/**
 * Created by PhpStorm.
 * User: GiBi
 * Date: 04.12.2018
 * Time: 10:49
 */

namespace app\models;

use yii\db\ActiveRecord;

class Contact extends ActiveRecord
{

    public static function tableName()
    {
        return '{{FORM}}';
    }

}