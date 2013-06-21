.class Lcom/fleapapa/helper/CallBursts$7;
.super Ljava/lang/Object;
.source "CallBursts.java"

# interfaces
.implements Lcom/fleapapa/helper/CallPapa$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallBursts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallBursts;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallBursts;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$7;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/fleapapa/helper/CallPapa$Call;I)V
    .locals 2
    .parameter "call"
    .parameter "changedStatus"

    .prologue
    .line 128
    iget-boolean v0, p1, Lcom/fleapapa/helper/CallPapa$Call;->foreground:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fleapapa/helper/CallBursts$7;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v0, v0, Lcom/fleapapa/helper/CallBursts;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/fleapapa/helper/CallBursts$7;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v0, v0, Lcom/fleapapa/helper/CallBursts;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts$7;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v1, v1, Lcom/fleapapa/helper/CallBursts;->runner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    :cond_0
    return-void
.end method
