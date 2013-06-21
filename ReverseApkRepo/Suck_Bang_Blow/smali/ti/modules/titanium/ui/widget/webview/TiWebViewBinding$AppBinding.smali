.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBinding"
.end annotation


# instance fields
.field private module:Lti/modules/titanium/app/AppModule;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 196
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-class v1, Lti/modules/titanium/app/AppModule;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getModuleByClass(Ljava/lang/Class;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/app/AppModule;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    .line 198
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;I)I
    .locals 8
    .parameter "event"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    invoke-virtual {v0}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    invoke-virtual {v1}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v3, "addEventListener"

    iget-object v5, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createMethodInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v6

    .line 216
    .local v6, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    new-instance v1, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {v1, v2, p2}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;-><init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;I)V

    invoke-virtual {v0, v6, p1, v1}, Lti/modules/titanium/app/AppModule;->addEventListener(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v7

    .line 217
    .local v7, listenerId:I
    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 218
    return v7
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "event"
    .parameter "json"

    .prologue
    .line 203
    :try_start_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 204
    .local v0, dict:Lorg/appcelerator/kroll/KrollDict;
    if-eqz p2, :cond_0

    const-string v2, "undefined"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    .end local v0           #dict:Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/appcelerator/kroll/KrollDict;-><init>(Lorg/json/JSONObject;)V

    .line 207
    .restart local v0       #dict:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    invoke-virtual {v2, p1, v0}, Lti/modules/titanium/app/AppModule;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v0           #dict:Lorg/appcelerator/kroll/KrollDict;
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 209
    .local v1, e:Lorg/json/JSONException;
    const-string v2, "TiWebViewBinding"

    const-string v3, "Error parsing event JSON"

    invoke-static {v2, v3, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeEventListener(Ljava/lang/String;I)V
    .locals 7
    .parameter "event"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    invoke-virtual {v0}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    invoke-virtual {v1}, Lti/modules/titanium/app/AppModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiContext;->getScope()Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    const-string v3, "removeEventListener"

    iget-object v5, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lorg/appcelerator/kroll/KrollInvocation;->createMethodInvocation(Lorg/appcelerator/titanium/TiContext;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Lorg/appcelerator/kroll/KrollMethod;Lorg/appcelerator/kroll/KrollProxy;)Lorg/appcelerator/kroll/KrollInvocation;

    move-result-object v6

    .line 224
    .local v6, invocation:Lorg/appcelerator/kroll/KrollInvocation;
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$AppBinding;->module:Lti/modules/titanium/app/AppModule;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, p1, v1}, Lti/modules/titanium/app/AppModule;->removeEventListener(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v6}, Lorg/appcelerator/kroll/KrollInvocation;->recycle()V

    .line 226
    return-void
.end method
