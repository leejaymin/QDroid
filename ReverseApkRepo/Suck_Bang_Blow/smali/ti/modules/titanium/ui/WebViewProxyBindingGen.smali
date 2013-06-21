.class public Lti/modules/titanium/ui/WebViewProxyBindingGen;
.super Lti/modules/titanium/ui/ViewProxyBindingGen;
.source "WebViewProxyBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "UI.WebView"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.ui.WebViewProxy"

.field private static final METHOD_canGoBack:Ljava/lang/String; = "canGoBack"

.field private static final METHOD_canGoForward:Ljava/lang/String; = "canGoForward"

.field private static final METHOD_evalJS:Ljava/lang/String; = "evalJS"

.field private static final METHOD_goBack:Ljava/lang/String; = "goBack"

.field private static final METHOD_goForward:Ljava/lang/String; = "goForward"

.field private static final METHOD_reload:Ljava/lang/String; = "reload"

.field private static final METHOD_setBasicAuthentication:Ljava/lang/String; = "setBasicAuthentication"

.field private static final METHOD_stopLoading:Ljava/lang/String; = "stopLoading"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "WebView"

.field private static final TAG:Ljava/lang/String; = "WebViewProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lti/modules/titanium/ui/ViewProxyBindingGen;-><init>()V

    .line 54
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "goBack"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "goForward"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "stopLoading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "canGoBack"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setBasicAuthentication"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "evalJS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "reload"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "canGoForward"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 66
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string v0, "UI.WebView"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .parameter "name"

    .prologue
    .line 70
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 71
    .local v8, value:Ljava/lang/Object;
    if-eqz v8, :cond_0

    move-object v9, v8

    .line 261
    :goto_0
    return-object v9

    .line 81
    :cond_0
    const-string v9, "goBack"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 82
    new-instance v3, Lti/modules/titanium/ui/WebViewProxyBindingGen$1;

    const-string v9, "goBack"

    invoke-direct {v3, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$1;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 95
    .local v3, goBack_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "goBack"

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v3

    .line 96
    goto :goto_0

    .line 99
    .end local v3           #goBack_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v9, "goForward"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 100
    new-instance v4, Lti/modules/titanium/ui/WebViewProxyBindingGen$2;

    const-string v9, "goForward"

    invoke-direct {v4, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$2;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 113
    .local v4, goForward_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "goForward"

    invoke-virtual {v9, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v4

    .line 114
    goto :goto_0

    .line 117
    .end local v4           #goForward_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v9, "stopLoading"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 118
    new-instance v7, Lti/modules/titanium/ui/WebViewProxyBindingGen$3;

    const-string v9, "stopLoading"

    invoke-direct {v7, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$3;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 131
    .local v7, stopLoading_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "stopLoading"

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v7

    .line 132
    goto :goto_0

    .line 135
    .end local v7           #stopLoading_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v9, "canGoBack"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 136
    new-instance v0, Lti/modules/titanium/ui/WebViewProxyBindingGen$4;

    const-string v9, "canGoBack"

    invoke-direct {v0, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$4;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 151
    .local v0, canGoBack_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "canGoBack"

    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v0

    .line 152
    goto :goto_0

    .line 155
    .end local v0           #canGoBack_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v9, "setBasicAuthentication"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 156
    new-instance v6, Lti/modules/titanium/ui/WebViewProxyBindingGen$5;

    const-string v9, "setBasicAuthentication"

    invoke-direct {v6, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$5;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 188
    .local v6, setBasicAuthentication_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "setBasicAuthentication"

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v6

    .line 189
    goto :goto_0

    .line 192
    .end local v6           #setBasicAuthentication_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v9, "evalJS"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 193
    new-instance v2, Lti/modules/titanium/ui/WebViewProxyBindingGen$6;

    const-string v9, "evalJS"

    invoke-direct {v2, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$6;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 218
    .local v2, evalJS_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "evalJS"

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v2

    .line 219
    goto/16 :goto_0

    .line 222
    .end local v2           #evalJS_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v9, "reload"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 223
    new-instance v5, Lti/modules/titanium/ui/WebViewProxyBindingGen$7;

    const-string v9, "reload"

    invoke-direct {v5, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$7;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 236
    .local v5, reload_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "reload"

    invoke-virtual {v9, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v5

    .line 237
    goto/16 :goto_0

    .line 240
    .end local v5           #reload_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v9, "canGoForward"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 241
    new-instance v1, Lti/modules/titanium/ui/WebViewProxyBindingGen$8;

    const-string v9, "canGoForward"

    invoke-direct {v1, p0, v9}, Lti/modules/titanium/ui/WebViewProxyBindingGen$8;-><init>(Lti/modules/titanium/ui/WebViewProxyBindingGen;Ljava/lang/String;)V

    .line 256
    .local v1, canGoForward_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v9, p0, Lti/modules/titanium/ui/WebViewProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v10, "canGoForward"

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v1

    .line 257
    goto/16 :goto_0

    .line 261
    .end local v1           #canGoForward_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    invoke-super {p0, p1}, Lti/modules/titanium/ui/ViewProxyBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    const-string v0, "ti.modules.titanium.ui.WebViewProxy"

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
    .line 285
    const-class v0, Lti/modules/titanium/ui/WebViewProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, "WebView"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 281
    const/4 v0, 0x0

    return-object v0
.end method
