{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<div id="currency_selector" class="col-xs-4 col-md-4 text-center currency-selector dropdown js-dropdown">
   <!--  <span>{l s='Currency:' d='Shop.Theme'}</span> -->
    <span class="expand-more _gray-darker" data-toggle="dropdown">{*$current_currency.iso_code*} {$current_currency.sign}</span>
    <a data-target="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="">
      <i class="material-icons expand-more">&#xE5C5;</i>
    </a>
    <ul class="dropdown-menu" aria-labelledby="dLabel">
      {foreach from=$currencies item=currency}
        <li class="text-center {if $currency.current} current{/if}">
          <a title="{$currency.name}" rel="nofollow" href="{$currency.url}" class="dropdown-item">{*$currency.iso_code*} {$currency.sign}</a>
        </li>
      {/foreach}
    </ul>
    <select class="link hidden-xs-up">
      {foreach from=$currencies item=currency}
        <option value="{$currency.url}"{if $currency.current} selected="selected"{/if}>{*$currency.iso_code*} {$currency.sign}</option>
      {/foreach}
    </select>
</div>
