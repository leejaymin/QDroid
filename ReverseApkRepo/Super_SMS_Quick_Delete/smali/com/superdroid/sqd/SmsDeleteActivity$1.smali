.class Lcom/superdroid/sqd/SmsDeleteActivity$1;
.super Landroid/os/Handler;
.source "SmsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/sqd/SmsDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/SmsDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/SmsDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/SmsDeleteActivity$1;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity$1;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->startDelete()V
    invoke-static {v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$0(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity$1;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->deleteSuccess()V
    invoke-static {v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$1(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    goto :goto_0

    .line 87
    :pswitch_2
    iget-object v0, p0, Lcom/superdroid/sqd/SmsDeleteActivity$1;->this$0:Lcom/superdroid/sqd/SmsDeleteActivity;

    #calls: Lcom/superdroid/sqd/SmsDeleteActivity;->deleteOne()V
    invoke-static {v0}, Lcom/superdroid/sqd/SmsDeleteActivity;->access$2(Lcom/superdroid/sqd/SmsDeleteActivity;)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
