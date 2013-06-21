.class Lcom/fleapapa/helper/CallBursts$3;
.super Ljava/lang/Object;
.source "CallBursts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$3;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 70
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Call;->playerState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 71
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts$3;->this$0:Lcom/fleapapa/helper/CallBursts;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallBursts;->nSelected()I

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts$3;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v2, p0, Lcom/fleapapa/helper/CallBursts$3;->this$0:Lcom/fleapapa/helper/CallBursts;

    iput-boolean v3, v2, Lcom/fleapapa/helper/CallBursts;->selectAll:Z

    invoke-virtual {v1, v3}, Lcom/fleapapa/helper/CallBursts;->selectAll(Z)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts$3;->this$0:Lcom/fleapapa/helper/CallBursts;

    const/4 v2, -0x1

    iput v2, v1, Lcom/fleapapa/helper/CallBursts;->cplay:I

    .line 75
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    :goto_0
    return-void

    .line 75
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallPapa$Burst;

    .line 76
    .local v0, burst:Lcom/fleapapa/helper/CallPapa$Burst;
    iget-boolean v2, v0, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    if-eqz v2, :cond_1

    .line 77
    iget-byte v2, v0, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-nez v2, :cond_1

    .line 78
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    sget-object v2, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->bursts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/fleapapa/helper/CallPapa$Call;->playBursts(IZ)V

    goto :goto_0

    .line 83
    .end local v0           #burst:Lcom/fleapapa/helper/CallPapa$Burst;
    :cond_3
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Call;->startPlayer()V

    goto :goto_0
.end method
