.class Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1;
.super Landroid/webkit/WebChromeClient;
.source "IntroduceWeb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/introduce/IntroduceWeb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/introduce/IntroduceWeb;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/introduce/IntroduceWeb;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1;->this$0:Lkr/co/medinbiz/widget/introduce/IntroduceWeb;

    .line 43
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1;->this$0:Lkr/co/medinbiz/widget/introduce/IntroduceWeb;

    #getter for: Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/introduce/IntroduceWeb;->access$0(Lkr/co/medinbiz/widget/introduce/IntroduceWeb;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    const v1, 0x104000a

    .line 50
    new-instance v2, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1$1;

    invoke-direct {v2, p0, p4}, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1$1;-><init>(Lkr/co/medinbiz/widget/introduce/IntroduceWeb$1;Landroid/webkit/JsResult;)V

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 57
    const/4 v0, 0x1

    return v0
.end method
