.class Lcom/wareone/tappmt/Transaction$2;
.super Landroid/os/Handler;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Transaction;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Transaction;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$2;->this$0:Lcom/wareone/tappmt/Transaction;

    .line 2286
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$2;->this$0:Lcom/wareone/tappmt/Transaction;

    #getter for: Lcom/wareone/tappmt/Transaction;->m_dlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/wareone/tappmt/Transaction;->access$0(Lcom/wareone/tappmt/Transaction;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2290
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$2;->this$0:Lcom/wareone/tappmt/Transaction;

    #calls: Lcom/wareone/tappmt/Transaction;->_setExchangeRate()V
    invoke-static {v0}, Lcom/wareone/tappmt/Transaction;->access$1(Lcom/wareone/tappmt/Transaction;)V

    .line 2294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2301
    :goto_0
    :pswitch_0
    return-void

    .line 2298
    :pswitch_1
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$2;->this$0:Lcom/wareone/tappmt/Transaction;

    const-string v1, "Sync Error."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
