.class Lcom/superdroid/sqd/ThreadDeleteActivity$1;
.super Landroid/os/Handler;
.source "ThreadDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/superdroid/sqd/ThreadDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;


# direct methods
.method constructor <init>(Lcom/superdroid/sqd/ThreadDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$1;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    .line 90
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$1;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->startDelete()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$0(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$1;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->deleteSuccess()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$1(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$1;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->deleteOne()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$2(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p0, Lcom/superdroid/sqd/ThreadDeleteActivity$1;->this$0:Lcom/superdroid/sqd/ThreadDeleteActivity;

    #calls: Lcom/superdroid/sqd/ThreadDeleteActivity;->showListView()V
    invoke-static {v0}, Lcom/superdroid/sqd/ThreadDeleteActivity;->access$3(Lcom/superdroid/sqd/ThreadDeleteActivity;)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
