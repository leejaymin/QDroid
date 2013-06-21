sePages.CustomPage=function(a){this.page=a;this.components=[];this.dataSource=ShoutemApp.getDatasourceByRef(this.page.dataSource);this.authServer=getAuthServerForDataSource(this.dataSource);this.newsProvider=DataSourceListFeedProvider.instance(this.dataSource)};classExtend(sePages.CustomPage,ScreenBase);sePages.CustomPage.prototype.willAppear=function(b){se.navigationBar.show();se.showAds(true);if(this.components){for(var c=0;c<this.components.length;c++){var a=this.components[c];a.willAppear(b)}}};createComponent=function(h,b,f,d,a){var g=Binding.createObject({bindDesc:h.bindings,bindEnv:{context:f}});if(h.bindings&&h.bindings.visibilityBinding&&!g.visibilityBinding){return false}if(h.bindings&&h.bindings.inverseVisibilityBinding&&g.inverseVisibilityBinding){return false}switch(h.type){case"NewsDetailsTitleItem":if(g.iconUrl=="bundle://deal_title_transparent_icon.png"){g.iconUrl=""}return new seComponents.DetailedTitleItem(g);break;case"MapItem":var c=ui.contentSize();var i=$.extend(g,{width:c.width-40,height:100});return new seComponents.StaticMapItem(g);break;case"SeparatorItem":return new seComponents.SeparatorItem({style:h.style});break;case"WebItem":return new seComponents.HTMLItem(g);break;case"SmallDisclosureItem":return new seComponents.DisclosureItem({title:g.title,iconName:g.iconName,onClick:actionRunnable(h.action,f)});break;case"MultiButtonItem":return new seComponents.ButtonItem({title:g.button1Title,onClick:actionRunnable(h.action,f)});break;case"BuyCouponButton":var e=shoutem.providers.couponsProviderFactory.createFromDataSource(a);return new seComponents.BuyCouponButtonItem({couponsProvider:e,authServer:d,article:f});break;case"DealInfoPanel":return new seComponents.DealInfoPanel(g);break;case"PhotoItem":return new seComponents.PhotoItem(g);break;case"LeadImage":return new seComponents.LeadImageItem(g);break;case"CommentButton":return new seComponents.CommentButtonItem({article:f,authServer:d,dataSourceId:a.id});break;case"ShareButton":return new seComponents.ShareButtonItem({articleLink:f.articleLink||f.link,title:f.title});break;case"LikeButton":return new seComponents.LikeButtonItem({article:f,authServer:d,newsLikesProvider:shoutem.providers.newsLikesProviderFactory.createFromDataSource(a)});break}};sePages.CustomPage.prototype.onArticleLoaded=function(g,m,n){var h=getFromObjectList(this.page.sections,"type","Custom");h=h.items||h;this.components=[];for(var c=0;c<h.length;c++){var l=h[c];var k=Binding.createObject({bindDesc:l.bindings,bindEnv:{context:g}});if(l.bindings&&l.bindings.visibilityBinding&&!k.visibilityBinding){continue}if(l.bindings&&l.bindings.inverseVisibilityBinding&&k.inverseVisibilityBinding){continue}switch(l.type){case"NewsDetailsTitleItem":if(k.iconUrl=="bundle://deal_title_transparent_icon.png"){k.iconUrl=""}this.components.push(new seComponents.DetailedTitleItem(k));break;case"MapItem":var a=ui.contentSize();var n=$.extend(k,{width:a.width-40,height:100});this.components.push(new seComponents.StaticMapItem(k));break;case"SeparatorItem":this.components.push(new seComponents.SeparatorItem({style:l.style}));break;case"WebItem":this.components.push(new seComponents.HTMLItem(k));break;case"SmallDisclosureItem":this.components.push(new seComponents.DisclosureItem({title:k.title,iconName:k.iconName,onClick:actionRunnable(l.action,g)}));break;case"MultiButtonItem":this.components.push(new seComponents.ButtonItem({title:k.button1Title,onClick:actionRunnable(l.action,g)}));break;case"BuyCouponButton":var f=shoutem.providers.couponsProviderFactory.createFromDataSource(this.dataSource);this.components.push(new seComponents.BuyCouponButtonItem({couponsProvider:f,authServer:this.authServer,article:g}));break;case"DealInfoPanel":this.components.push(new seComponents.DealInfoPanel(k));break;case"PhotoItem":this.components.push(new seComponents.PhotoItem(k));break;case"LeadImage":this.components.push(new seComponents.LeadImageItem(k));break;case"CommentButton":this.components.push(new seComponents.CommentButtonItem({article:g,authServer:this.authServer,dataSourceId:this.dataSource.id}));break;case"ShareButton":this.components.push(new seComponents.ShareButtonItem({articleLink:g.articleLink||g.link,title:g.title}));break;case"LikeButton":this.components.push(new seComponents.LikeButtonItem({article:g,authServer:this.authServer,newsLikesProvider:shoutem.providers.newsLikesProviderFactory.createFromDataSource(this.dataSource)}));break}}var b=$("<div><div id='custom-section' style='padding-bottom: 10px;'></div><div id='comments-section'></div></div>");if(this.page.cssClassName){b.addClass(this.page.cssClassName)}var e=b.find("#custom-section");for(var c=0;c<this.components.length;c++){var j=this.components[c];j.willAppear(n);j.load(e,n);j.didAppear(n)}var d=getFromObjectList(this.page.sections,"type","Comments");if(g.commentable){this.newsCommentsProvider=shoutem.providers.newsCommentsProviderFactory.createFromDataSource(this.dataSource);this.commentsComponent=new seComponents.CommentsComponent({article:g,commentsProvider:this.newsCommentsProvider,itemFactory:createPageItemFactory(d.items)});this.commentsComponent.load(b.find("#comments-section"),n)}m.append(b);showAdvertisementOnBottom(m)};sePages.CustomPage.prototype.willDisappear=function(b,a){removeAdvertisement(a);setAndroidOptionsMenu()};sePages.CustomPage.prototype.load=function(c,b){var h=b.params;var a=function(j,i){if(j.status==0){ui.error(M.youAreOffline)}navigateBack(1)};var e=this;var g=function(i){e.onArticleLoaded(i,c,b)};var f={postId:h.itemId,success:g,error:a,};f.fromCache=true;var d=this.newsProvider.get(f);if(d){g(d)}else{f.fromCache=false;this.newsProvider.get(f)}};seComponents.HTMLItem=function(a){this.settings=$.extend({html:""},a)};classExtend(seComponents.HTMLItem,ComponentBase);seComponents.HTMLItem.prototype.load=function(b,a){var c=$("<div class='se-html-item se-text-container'>"+this.settings.html+"</div>");b.append(c)};seComponents.DetailedTitleItem=function(a){this.item=a};classExtend(seComponents.DetailedTitleItem,ComponentBase);seComponents.DetailedTitleItem.prototype.load=function(b,a){var d=$(renderEjs("detailed_title_item",{data:this.item}));var c=d.find(".se-info-bar-grid");if(createInfoBar(c,this.item)){d.addClass("with-infobar")}else{c.hide()}b.append(d)};seComponents.DisclosureItem=function(a){this.settings=$.extend({title:"&nbsp;",iconName:"",onClick:$.noop},a)};classExtend(seComponents.DisclosureItem,ComponentBase);seComponents.DisclosureItem.prototype.load=function(b,a){var c=$(renderEjs("disclosure_item",{data:this.settings}));c.touchEvents().bind("fastClick click",this.settings.onClick);b.append(c)};seComponents.SeparatorItem=function(a){this.settings=$.extend({style:"separatorEmpty"},a);this.cssClass="se-separator-empty se-style-"+this.settings.style};classExtend(seComponents.SeparatorItem,ComponentBase);seComponents.SeparatorItem.prototype.load=function(b,a){if(this.settings.style=="separatorCellGroup"){var c=$("<div class='se-cell-group-separator'><div class='se-line'></div></div>")}else{var c=$("<div class='"+this.cssClass+"'></div>")}b.append(c)};seComponents.ButtonItem=function(a){this.settings=$.extend({title:"&nbsp;",onClick:$.noop},a)};classExtend(seComponents.ButtonItem,ComponentBase);seComponents.ButtonItem.prototype.load=function(b,a){var c=$(renderEjs("button_item",{data:this.settings}));c.touchEvents().bind("click fastClick",this.settings.onClick);b.append(c)};seComponents.StaticMapItem=function(a){var c=ShoutemApp.getModule("Places")||{};var b=ui.contentSize();this.settings=$.extend({name:"",zoom:14,pinIcon:c.map_pin_small_image_url,width:b.width,height:Math.max(Math.round(b.height/3),150),},a)};classExtend(seComponents.StaticMapItem,ComponentBase);seComponents.StaticMapItem.prototype.load=function(i,j){var c=this.settings.width;var g=this.settings.height;var h=c+"x"+g;var f=this.settings.latitude;var a=this.settings.longitude;var d=$(renderEjs("static_map_item",{width:c+"px",height:g+"px"}));var e=d.find(".map");e.css({width:c+"px",height:g+"px"});e.attr("src",getGoogleStaticMap(f,a,h,this.settings.zoom,this.settings.pinIcon));var b=this.settings.name;d.touchEvents().bind("click fastClick",function(){executeAction({type:"OpenPageAction",page:{"$ref":"MapPage:Category:000000000000000000"},parameters:{hideRefresh:true,showInPage:true,latitude:f,longitude:a,name:b,showBack:true}})});i.append(d)};seComponents.DealInfoPanel=function(a){this.settings=$.extend({regularPrice:"&nbsp;",salesPrice:"&nbsp;",discount:"&nbsp;"},a)};classExtend(seComponents.DealInfoPanel,ComponentBase);seComponents.DealInfoPanel.prototype.load=function(c,b){var a=$(renderEjs("deal_info_panel",{data:this.settings}));c.append(a)};seComponents.PhotoItem=function(a){this.settings=$.extend({imageUrl:"",imageWidth:undefined,imageHeight:undefined},a)};classExtend(seComponents.PhotoItem,ComponentBase);seComponents.PhotoItem.prototype.load=function(d,c){var e=this.settings.imageWidth;var a=this.settings.imageHeight;var h=this.settings.imageUrl;var g=Math.min(e,$(window).width()-44);var b=a/e*g;var f=$("<div class='se-normal-all-sides-margin'><div style='max-width: 100%; margin: 0 auto 0 auto;' class='se-crop	'><img class='se-cropable img-loading' src='"+imageUrl(h)+"' onLoad='cropImage(event);' onError='seImageLoadError(event)'></img></div></div>");f.find(".se-crop").css({width:g,height:b});d.append(f)};seComponents.LeadImageItem=function(a){this.settings=$.extend({imageUrl:""},a)};classExtend(seComponents.LeadImageItem,ComponentBase);seComponents.LeadImageItem.prototype.load=function(b,a){var c=$("<div class='se-lead-image img-loading se-crop'><img style='display:none' onload='newsImageLoaded(event);seImageLoaded(event);' onerror='seImageLoadError(event)' src='"+imageUrl(this.settings.imageUrl)+"'></img></div>");b.append(c)};seComponents.CommentButtonItem=function(a){this.settings=$.extend({article:{commentable:"no",anonymous_contact_data_allowed:false,id:undefined},authServer:"ShoutemNetwork",dataSourceId:undefined},a)};classExtend(seComponents.CommentButtonItem,ComponentBase);seComponents.CommentButtonItem.prototype.createNewsComment=function(){var c=this.settings.authServer;var d=this.settings.article;var b=this.settings.dataSourceId;if(d){var e=(d.commentable==="yes"&&!user.authenticated(c));var a=d.anonymous_contact_data_allowed;navigateTo(getNewsCommentUrl(d.id,null,c,e,a,null,null,b))}};seComponents.CommentButtonItem.prototype.willAppear=function(a){if(this.settings.article.commentable){var c=this;var b=new NavigationBarButton({icon:"img/icon_comment.png",onClick:function(){onNewsCommentComplete=function(){if(c.article&&typeof(c.article.comments_count)!="undefined"){c.article.comments_count++}};c.createNewsComment()}});b.attachTo(se.navigationBar,{position:"append"})}};seComponents.ShareButtonItem=function(a){this.settings=$.extend({articleLink:false,title:M.shareNewsText},a)};classExtend(seComponents.ShareButtonItem,ComponentBase);seComponents.ShareButtonItem.prototype.share=function(){var a=this.settings.articleLink;var b=this.settings.title;shortenUrl(a,function(d){var c=140-(d||a).length;var e={title:M.share,text:shorten(b||M.shareNewsText,c),sharedUrl:d||a};device.call("ui/showShareMenu",e)})};seComponents.ShareButtonItem.prototype.willAppear=function(a){var c=this;if(this.settings.articleLink){var b=new NavigationBarButton({icon:"img/icon_share.png",onClick:function(){c.share()}});b.attachTo(se.navigationBar,{position:"append"})}};seComponents.LikeButtonItem=function(a){this.settings=$.extend({newsLikesProvider:undefined,authServer:"ShoutemNetwork",article:{id:undefined,likeable:false}},a);this.likeable=this.settings.likeable||this.settings.likable};classExtend(seComponents.LikeButtonItem,ComponentBase);seComponents.LikeButtonItem.prototype.toggleNewsLike=function(){var d=this.settings.newsLikesProvider;var b=this.settings.article.id;var a=this.settings.authServer;var c=this;requireAuthentication(function(){var e=function(){se.showToast(c.isLiked?M.unlike:M.like);reloadScreen()};if(c.isLiked){d.unlike({articleId:b,success:e,error:function(g,f){if(g.status==200){e()}}})}else{d.like({articleId:b,success:e})}},{},a,true)};seComponents.LikeButtonItem.prototype.load=function(d,c){if(this.likeable=="no"){return}var b=$('<div id="newsLikes" style="display: none;"></div>');d.append(b);var f=this;var g=this.settings.newsLikesProvider;var e=this.settings.article.id;var a=this.settings.authServer;var h=this.settings.article;g.get({articleId:e,inBackground:true,success:function(j){var i=user.identities.findIdentity(a);var l=isUserLiked(i?i.userId:false,j.data);f.isLiked=l;var k=new NavigationBarButton({icon:l?"img/icon_unlike.png":"img/icon_like.png",onClick:function(){f.toggleNewsLike()}});k.attachTo(se.navigationBar,{position:"prepend"});b.html(getLikeLabel(j)).show();if(!j.data||j.data.length===0){b.unbind("click").one("click",function(){f.toggleNewsLike()})}b.find("#newsLikeButton").click(function(){f.toggleNewsLike()}).html(l?M.unlike:M.like)},error:$.noop})};seComponents.LikeButtonItem.prototype.willAppear=function(a){var c=this;var d=this.settings.article;if(this.likeable!="no"&&typeof(this.isLiked)!="undefined"){var b=new NavigationBarButton({icon:this.isLiked?"img/icon_unlike.png":"img/icon_like.png",onClick:function(){c.toggleNewsLike()}});b.attachTo(se.navigationBar,{position:"prepend"})}};seComponents.BuyCouponButtonItem=function(a){this.settings=$.extend({couponsProvider:undefined,authServer:"ShoutemNetwork",article:undefined},a);var c=this.settings.couponsProvider;c.statusObject.unbind(".couponButton");var b=this;c.statusObject.bind("apiAjaxStart.couponButton",function(e,d){e.stopPropagation();if(b.jSpinner){b.jSpinner.show()}});c.statusObject.bind("apiAjaxComplete.couponButton",function(e,d){e.stopPropagation();if(b.jSpinner){b.jSpinner.hide()}})};classExtend(seComponents.BuyCouponButtonItem,ComponentBase);seComponents.BuyCouponButtonItem.prototype.buyCoupon=function(){var c=this.settings.couponsProvider;var b=this.settings.article;var a=this;this.jButton.hide();c.save({postId:b.post_id,success:function(){reloadScreen();se.showToast(M.buyCouponSuccess)},error:function(d){if(d.status==200){a.jButton.hide();a.jLabelPanelTitle.html(M.noCouponsAvailable);a.jLabelPanelSubtitle.hide();a.jLabelPanel.show()}else{a.jButton.show();a.jLabelPanel.hide()}}})};seComponents.BuyCouponButtonItem.prototype.load=function(e,d){var g=this.settings.article;var a=g.available_coupons_count;var c=this.settings.authServer;var h=this.settings.couponsProvider;var f=this;var b=$(renderEjs("coupon_button_item",{data:{title:M.buyCoupon+(a>0?" ("+a+")":"")}}));this.jButton=b.find("#coupon-buy-button");this.jLabelPanel=b.find("#coupon-label-panel");this.jSpinner=b.find("#coupon-loading");this.jLabelPanelTitle=this.jLabelPanel.find(".se-title");this.jLabelPanelSubtitle=this.jLabelPanel.find(".se-subtitle");this.jLabelPanelDate=this.jLabelPanelSubtitle.find("#date");this.jLabelPanelCode=this.jLabelPanelSubtitle.find("#code");this.jButton.touchEvents().unbind("fastClick click").bind("fastClick click",function(){requireAuthentication(function(){f.buyCoupon()},null,c,true)});if(user.authenticated(c)){if(g.couponcount>0&&a<=0){f.jButton.hide();f.jLabelPanelTitle.html(M.noCouponsAvailable);f.jLabelPanelSubtitle.hide();f.jLabelPanel.show()}else{h.get({postId:g.post_id,success:function(i){if(!i){f.jButton.show();f.jLabelPanel.hide()}else{f.jButton.hide();f.jLabelPanelTitle.html(M.couponUsed);f.jLabelPanelSubtitle.show();f.jLabelPanelDate.html(renderTime(i.created_at));f.jLabelPanelCode.html(i.code);f.jLabelPanel.show()}},error:function(i){if(i.status==200){f.jButton.show();f.jLabelPanel.hide()}else{f.jLabelPanelTitle.html(M.noCouponsAvailable);f.jLabelPanelSubtitle.hide();f.jLabelPanel.show()}}})}}else{this.jButton.show()}e.append(b)};
var createDealDetailsPage=function(c,b){var a={type:"Custom",cssClassName:"se-deals-details",dataSource:c.dataSource,sections:[{type:"Custom",items:[{type:"CommentButton"},{type:"ShareButton"},{type:"NewsDetailsTitleItem",style:"Default",bindings:c.bindings},{type:"DealInfoPanel",bindings:{salesPrice:{converter:{type:"StringFormatterConverter",parameters:{formatString:"%@ %@",param1:{path:"saleprice"},param2:{path:"currency"}}}},regularPrice:{converter:{type:"StringFormatterConverter",parameters:{formatString:"%@ %@",param1:{path:"regularprice"},param2:{path:"currency"}}}},discount:{converter:{type:"StringFormatterConverter",parameters:{formatString:"%@%",param1:{path:"discountpercentage"}}}}}},{type:"LeadImage",bindings:{imageUrl:c.bindings.leadImageUrl,visibilityBinding:c.bindings.leadImageUrl}},{type:"SeparatorItem"},{type:"BuyCouponButton"},{type:"WebItem",bindings:{html:c.bindings.body,visibilityBinding:c.bindings.body}}]},{type:"Comments",items:c.items}]};var d=a.sections[0];d.items.push({type:"WebItem",bindings:{visibilityBinding:{path:"enddate"},html:{converter:{type:"StringFormatterConverter",parameters:{formatString:"<p>"+M.couponExpiresOn+" %@</p>",param1:{converter:{type:"TimeDistanceConverter",parameters:{startTime:{path:"enddate"},useDeviceTimeZone:false,hideTime:true}}}}}}}});d.items=d.items.concat(c.customItems);d.items.push({type:"LikeButton"});return new sePages.CustomPage(a)};
sePages.ListPage=function(a){this.page=a;var b=ShoutemApp.getDatasourceByRef(this.page.dataSource);this.listFeedProvider=DataSourceListFeedProvider.instance(b);if(a.search&&a.search.type=="Remote"){this.hasSearch=true}else{this.hasSearch=false}};sePages.ListPage.prototype=new ScreenBase();sePages.ListPage.constructor=ScreenBase;sePages.ListPage.prototype.parent=ScreenBase.prototype;sePages.ListPage.prototype.willAppear=function(){se.navigationBar.show();se.showAds(true);if(!this.page.hideRefresh){refreshNavigationBarButton.attachTo(se.navigationBar,{position:"prepend"})}};sePages.ListPage.prototype.load=function(b,a){var c=ShoutemApp.getDatasourceByRef(this.page.dataSource);this.listComponent=new seComponents.ListComponent({itemFactory:createPageItemFactory(this.page.items),listProvider:this.listFeedProvider,hasSearch:this.hasSearch});this.listComponent.load(b,a)};sePages.ListPage.prototype.willDisappear=function(b,a){removeAdvertisement(a)};sePages.ListPage.prototype.didAppear=function(b,a){showAdvertisementOnBottom(a)};
