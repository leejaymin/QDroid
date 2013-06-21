.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;
.super Ljava/lang/Object;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "APIBinding"
.end annotation


# instance fields
.field private module:Lti/modules/titanium/api/APIModule;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 158
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p2}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    const-class v1, Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->getModuleByClass(Ljava/lang/Class;)Lorg/appcelerator/kroll/KrollModule;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/api/APIModule;

    iput-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    .line 160
    return-void
.end method


# virtual methods
.method public critical(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 162
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->critical(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public debug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 165
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->debug(Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 168
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->error(Ljava/lang/Object;)V

    .line 169
    return-void
.end method

.method public fatal(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 171
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->fatal(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 174
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->info(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "level"
    .parameter "msg"

    .prologue
    .line 177
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1, p2}, Lti/modules/titanium/api/APIModule;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public notice(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 180
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->notice(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 183
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->trace(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 186
    iget-object v0, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$APIBinding;->module:Lti/modules/titanium/api/APIModule;

    invoke-virtual {v0, p1}, Lti/modules/titanium/api/APIModule;->warn(Ljava/lang/Object;)V

    .line 187
    return-void
.end method
