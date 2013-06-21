.class Lkr/co/medinbiz/helper/LoginManager$1;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/helper/LoginManager;->noticeData()V
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
    iput-object p1, p0, Lkr/co/medinbiz/helper/LoginManager$1;->this$0:Lkr/co/medinbiz/helper/LoginManager;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager$1;->this$0:Lkr/co/medinbiz/helper/LoginManager;

    #getter for: Lkr/co/medinbiz/helper/LoginManager;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/helper/LoginManager;->access$0(Lkr/co/medinbiz/helper/LoginManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager$1;->this$0:Lkr/co/medinbiz/helper/LoginManager;

    #getter for: Lkr/co/medinbiz/helper/LoginManager;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/helper/LoginManager;->access$0(Lkr/co/medinbiz/helper/LoginManager;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 89
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/helper/LoginManager$1;->this$0:Lkr/co/medinbiz/helper/LoginManager;

    #calls: Lkr/co/medinbiz/helper/LoginManager;->noticePopup()V
    invoke-static {v0}, Lkr/co/medinbiz/helper/LoginManager;->access$1(Lkr/co/medinbiz/helper/LoginManager;)V

    .line 90
    return-void
.end method
