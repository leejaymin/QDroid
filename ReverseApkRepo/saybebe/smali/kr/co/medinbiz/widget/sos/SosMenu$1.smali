.class Lkr/co/medinbiz/widget/sos/SosMenu$1;
.super Landroid/os/Handler;
.source "SosMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/sos/SosMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/sos/SosMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/sos/SosMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosMenu$1;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    .line 253
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 257
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosMenu$1;->this$0:Lkr/co/medinbiz/widget/sos/SosMenu;

    #getter for: Lkr/co/medinbiz/widget/sos/SosMenu;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lkr/co/medinbiz/widget/sos/SosMenu;->access$0(Lkr/co/medinbiz/widget/sos/SosMenu;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 259
    return-void
.end method
