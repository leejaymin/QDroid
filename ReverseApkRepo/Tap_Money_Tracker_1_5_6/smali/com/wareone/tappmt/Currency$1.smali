.class Lcom/wareone/tappmt/Currency$1;
.super Landroid/os/Handler;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Currency;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Currency;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Currency$1;->this$0:Lcom/wareone/tappmt/Currency;

    .line 470
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$1;->this$0:Lcom/wareone/tappmt/Currency;

    #getter for: Lcom/wareone/tappmt/Currency;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wareone/tappmt/Currency;->access$0(Lcom/wareone/tappmt/Currency;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 474
    iget-object v0, p0, Lcom/wareone/tappmt/Currency$1;->this$0:Lcom/wareone/tappmt/Currency;

    invoke-virtual {v0}, Lcom/wareone/tappmt/Currency;->_refresh()V

    .line 475
    return-void
.end method
