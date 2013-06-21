.class Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1;
.super Landroid/webkit/WebChromeClient;
.source "CelebrationGreetingsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1;->this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;

    .line 72
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
    .line 76
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1;->this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;

    #getter for: Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->access$0(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 78
    const v1, 0x104000a

    .line 79
    new-instance v2, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1$1;

    invoke-direct {v2, p0, p4}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1$1;-><init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$1;Landroid/webkit/JsResult;)V

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
