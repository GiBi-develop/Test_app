
<?php
use yii\debug;
/* @var $this yii\web\View */

use yii\helpers\Html;
use yii\widgets\LinkPager;

$this->title = 'Backend';
$this->params['breadcrumbs'][] = $this->title;
?>
<table class="table" cellspacing='0' ><tr><th>id</th><th>Имя</th><th>Фамилия</th><th>Email</th><th>Телефон</th><th>Текст</th></tr>
<?php foreach ($allform as $country): ?>
    <tr>
        <td><?= Html::encode("{$country->id}") ?></td>
        <td><?= $country->name ?></td>
        <td><?= $country->Secondname ?></td>
        <td><?= $country->email ?></td>
        <td><?= $country->phone ?></td>
        <td><?= $country->TEXT ?></td>
    </tr>
<?php endforeach; ?>
<?= LinkPager::widget(['pagination' => $pagination]) ?>

<?php //print_r($forms) ?>