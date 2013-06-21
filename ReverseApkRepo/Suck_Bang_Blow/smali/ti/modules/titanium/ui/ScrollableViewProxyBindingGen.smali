.class public Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;
.super Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;
.source "ScrollableViewProxyBindingGen.java"


# static fields
.field private static final DYNPROP_currentPage:Ljava/lang/String; = "currentPage"

.field private static final DYNPROP_showPagingControl:Ljava/lang/String; = "showPagingControl"

.field private static final DYNPROP_views:Ljava/lang/String; = "views"

.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.ScrollableView"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.ScrollableViewProxy"

.field private static final METHOD_addView:Ljava/lang/String; = "addView"

.field private static final METHOD_getCurrentPage:Ljava/lang/String; = "getCurrentPage"

.field private static final METHOD_getViews:Ljava/lang/String; = "getViews"

.field private static final METHOD_moveNext:Ljava/lang/String; = "moveNext"

.field private static final METHOD_movePrevious:Ljava/lang/String; = "movePrevious"

.field private static final METHOD_removeView:Ljava/lang/String; = "removeView"

.field private static final METHOD_scrollToView:Ljava/lang/String; = "scrollToView"

.field private static final METHOD_setCurrentPage:Ljava/lang/String; = "setCurrentPage"

.field private static final METHOD_setShowPagingControl:Ljava/lang/String; = "setShowPagingControl"

.field private static final METHOD_setViews:Ljava/lang/String; = "setViews"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "ScrollableView"

.field private static final TAG:Ljava/lang/String; = "ScrollableViewProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;-><init>()V

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "showPagingControl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "views"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "currentPage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setViews"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "removeView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setShowPagingControl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getViews"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "movePrevious"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "moveNext"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getCurrentPage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "scrollToView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setCurrentPage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 76
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    const-string v0, "UI.ScrollableView"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 22
    .parameter "name"

    .prologue
    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 81
    .local v21, value:Ljava/lang/Object;
    if-eqz v21, :cond_0

    move-object/from16 v6, v21

    .line 463
    :goto_0
    return-object v6

    .line 90
    :cond_0
    const-string v6, "showPagingControl"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 91
    new-instance v3, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$1;

    const-string v5, "showPagingControl"

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 121
    .local v3, showPagingControl_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 122
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "showPagingControl"

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v3

    .line 124
    goto :goto_0

    .line 127
    .end local v3           #showPagingControl_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v6, "views"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 128
    new-instance v4, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$2;

    const-string v6, "views"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 166
    .local v4, views_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 167
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "views"

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v4

    .line 169
    goto :goto_0

    .line 172
    .end local v4           #views_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v6, "currentPage"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 173
    new-instance v5, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$3;

    const-string v7, "currentPage"

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 211
    .local v5, currentPage_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 212
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "currentPage"

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 214
    goto/16 :goto_0

    .line 218
    .end local v5           #currentPage_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v6, "setViews"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 219
    new-instance v20, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$4;

    const-string v6, "setViews"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 242
    .local v20, setViews_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setViews"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v20

    .line 243
    goto/16 :goto_0

    .line 246
    .end local v20           #setViews_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v6, "removeView"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 247
    new-instance v16, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$5;

    const-string v6, "removeView"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 270
    .local v16, removeView_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "removeView"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v16

    .line 271
    goto/16 :goto_0

    .line 274
    .end local v16           #removeView_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v6, "setShowPagingControl"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 275
    new-instance v19, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$6;

    const-string v6, "setShowPagingControl"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 298
    .local v19, setShowPagingControl_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setShowPagingControl"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v19

    .line 299
    goto/16 :goto_0

    .line 302
    .end local v19           #setShowPagingControl_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v6, "addView"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 303
    new-instance v11, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$7;

    const-string v6, "addView"

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 326
    .local v11, addView_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "addView"

    invoke-virtual {v6, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v11

    .line 327
    goto/16 :goto_0

    .line 330
    .end local v11           #addView_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v6, "getViews"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 331
    new-instance v13, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$8;

    const-string v6, "getViews"

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$8;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 346
    .local v13, getViews_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getViews"

    invoke-virtual {v6, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v13

    .line 347
    goto/16 :goto_0

    .line 350
    .end local v13           #getViews_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v6, "movePrevious"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 351
    new-instance v15, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$9;

    const-string v6, "movePrevious"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$9;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 364
    .local v15, movePrevious_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "movePrevious"

    invoke-virtual {v6, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v15

    .line 365
    goto/16 :goto_0

    .line 368
    .end local v15           #movePrevious_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v6, "moveNext"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 369
    new-instance v14, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$10;

    const-string v6, "moveNext"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$10;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 382
    .local v14, moveNext_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "moveNext"

    invoke-virtual {v6, v7, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    .line 383
    goto/16 :goto_0

    .line 386
    .end local v14           #moveNext_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v6, "getCurrentPage"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 387
    new-instance v12, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$11;

    const-string v6, "getCurrentPage"

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$11;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 402
    .local v12, getCurrentPage_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "getCurrentPage"

    invoke-virtual {v6, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v12

    .line 403
    goto/16 :goto_0

    .line 406
    .end local v12           #getCurrentPage_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v6, "scrollToView"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 407
    new-instance v17, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$12;

    const-string v6, "scrollToView"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$12;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 430
    .local v17, scrollToView_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "scrollToView"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v17

    .line 431
    goto/16 :goto_0

    .line 434
    .end local v17           #scrollToView_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v6, "setCurrentPage"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 435
    new-instance v18, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$13;

    const-string v6, "setCurrentPage"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen$13;-><init>(Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;Ljava/lang/String;)V

    .line 458
    .local v18, setCurrentPage_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/ui/ScrollableViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v6, v0

    const-string v7, "setCurrentPage"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v18

    .line 459
    goto/16 :goto_0

    .line 463
    .end local v18           #setCurrentPage_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/proxy/TiViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    const-string v0, "ti.modules.titanium.ui.ScrollableViewProxy"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 487
    const-class v0, Lti/modules/titanium/ui/ScrollableViewProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    const-string v0, "ScrollableView"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method
