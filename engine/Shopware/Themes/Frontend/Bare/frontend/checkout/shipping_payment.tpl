{extends file="frontend/index/index.tpl"}

{* Shop header *}
{block name='frontend_index_navigation'}
    {if !$theme.checkoutHeader}
        {$smarty.block.parent}
    {else}
        {include file="frontend/checkout/header.tpl"}
    {/if}
{/block}

{* Back to the shop button *}
{block name='frontend_index_logo_trusted_shops' append}
    {if $theme.checkoutHeader}
        <a href="{url controller='index'}"
           class="btn btn--grey is--small btn--back-top-shop"
           title="{s name='FinishButtonBackToShop' namespace='frontend/checkout/finish'}{/s}">
            <i class="icon--arrow-left is--small"></i>
            {s name="FinishButtonBackToShop" namespace="frontend/checkout/finish"}{/s}
        </a>
    {/if}
{/block}

{* Hide sidebar left *}
{block name='frontend_index_content_left'}{/block}

{* Hide breadcrumb *}
{block name='frontend_index_breadcrumb'}{/block}

{* Step box *}
{block name='frontend_index_navigation_categories_top'}
    {if !$theme.checkoutHeader}
        {$smarty.block.parent}
    {/if}

	{include file="frontend/register/steps.tpl" sStepActive="paymentShipping"}
{/block}

{* Hide footer *}
{block name="frontend_index_footer"}
    {if !$theme.checkoutHeader}
        {$smarty.block.parent}
    {/if}
{/block}

{* Main content *}
{block name="frontend_index_content"}
    <div class="content block content--confirm product--table" data-ajax-shipping-payment="true">
        {include file="frontend/checkout/shipping_payment_core.tpl"}
    </div>
{/block}