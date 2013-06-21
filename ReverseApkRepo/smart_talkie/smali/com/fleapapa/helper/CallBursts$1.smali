.class Lcom/fleapapa/helper/CallBursts$1;
.super Ljava/lang/Object;
.source "CallBursts.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallBursts;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallBursts;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallBursts;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallBursts$1;->this$0:Lcom/fleapapa/helper/CallBursts;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v1, p0, Lcom/fleapapa/helper/CallBursts$1;->this$0:Lcom/fleapapa/helper/CallBursts;

    iget-object v1, v1, Lcom/fleapapa/helper/CallBursts;->adapter:Lcom/fleapapa/helper/CallBursts$BurstAdapter;

    invoke-virtual {v1, p3}, Lcom/fleapapa/helper/CallBursts$BurstAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/CallBursts$Burstx;

    .line 54
    .local v0, bx:Lcom/fleapapa/helper/CallBursts$Burstx;
    iget-object v1, v0, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-byte v1, v1, Lcom/fleapapa/helper/CallPapa$Burst;->type:B

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1}, Lcom/fleapapa/helper/CallPapa$Call;->stopPlayer()V

    .line 57
    iget-object v1, v0, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/CallBursts$Burstx;->select(Z)V

    .line 58
    iget-object v1, v0, Lcom/fleapapa/helper/CallBursts$Burstx;->burst:Lcom/fleapapa/helper/CallPapa$Burst;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa$Burst;->selected:Z

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lcom/fleapapa/helper/CallBursts;->call:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-virtual {v1, p3, v2}, Lcom/fleapapa/helper/CallPapa$Call;->playBursts(IZ)V

    goto :goto_0

    .line 57
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method
