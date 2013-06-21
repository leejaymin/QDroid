.class Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;
.super Lorg/appcelerator/kroll/KrollMethod;
.source "TiWebViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewCallback"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;I)V
    .locals 2
    .parameter
    .parameter "id"

    .prologue
    .line 138
    iput-object p1, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webViewCallback$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollMethod;-><init>(Ljava/lang/String;)V

    .line 140
    iput p2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->id:I

    .line 141
    return-void
.end method


# virtual methods
.method public invoke(Lorg/appcelerator/kroll/KrollInvocation;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "invocation"
    .parameter "args"

    .prologue
    const/4 v3, 0x0

    .line 145
    array-length v2, p2

    if-lez v2, :cond_0

    aget-object v2, p2, v3

    instance-of v2, v2, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v2, :cond_0

    .line 146
    aget-object v1, p2, v3

    check-cast v1, Lorg/appcelerator/kroll/KrollDict;

    .line 147
    .local v1, data:Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ti.executeListener("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/appcelerator/kroll/KrollDict;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, code:Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding$WebViewCallback;->this$0:Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;

    #calls: Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->evalJS(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;->access$300(Lti/modules/titanium/ui/widget/webview/TiWebViewBinding;Ljava/lang/String;)V

    .line 150
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #data:Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    sget-object v2, Lorg/appcelerator/kroll/KrollProxy;->UNDEFINED:Ljava/lang/Object;

    return-object v2
.end method
