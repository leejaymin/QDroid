.class Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient$1;->this$1:Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient;

    iput-object p2, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 183
    return-void
.end method
