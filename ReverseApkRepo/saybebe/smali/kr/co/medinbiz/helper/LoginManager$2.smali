.class Lkr/co/medinbiz/helper/LoginManager$2;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/helper/LoginManager;->noticePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/helper/LoginManager;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/helper/LoginManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/helper/LoginManager$2;->this$0:Lkr/co/medinbiz/helper/LoginManager;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 109
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager$2;->this$0:Lkr/co/medinbiz/helper/LoginManager;

    #getter for: Lkr/co/medinbiz/helper/LoginManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/helper/LoginManager;->access$2(Lkr/co/medinbiz/helper/LoginManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
