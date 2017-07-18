{*
* 2007-2015 PrestaShop
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
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<a href="{$urls.base_url}">
	{if $page.page_name == 'category'}
		<div id="custom-text" class="hidden-sm-down custom-text-cat col-xs-12 col-sm-12 col-md-4" {hook h='displayColor'}>
	{else}
		<div id="custom-text" class="hidden-sm-down" {hook h='displayColor'}>
	{/if}
	    	{$cms_infos.text nofilter} 
		</div>
</a>

{if $page.page_name == 'category' && $category.image.large.url}
	<div class="hidden-sm-down background category-cover"
		style="background-image: url({$category.image.large.url});">
	</div>
	<img class="hidden-md-up banner" src="{$category.image.large.url}">
{/if}

<div id="custom-text-respons" 
	 class="hidden-md-up" 
	 {hook h='displayColor'}
	>
	<a href="{$urls.base_url}">
        {$cms_infos.text nofilter}
  	</a> 
</div>
