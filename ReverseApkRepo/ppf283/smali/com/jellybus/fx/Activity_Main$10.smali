.class Lcom/jellybus/fx/Activity_Main$10;
.super Landroid/os/Handler;
.source "Activity_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$10;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 2045
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 2048
    invoke-static {}, Lcom/jellybus/fx/Activity_Main;->access$41()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$10;->this$0:Lcom/jellybus/fx/Activity_Main;

    iget-object v0, v0, Lcom/jellybus/fx/Activity_Main;->handler_start:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2053
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2054
    return-void

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$10;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$4(Lcom/jellybus/fx/Activity_Main;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
