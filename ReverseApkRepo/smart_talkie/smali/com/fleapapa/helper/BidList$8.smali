.class Lcom/fleapapa/helper/BidList$8;
.super Ljava/lang/Thread;
.source "BidList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/BidList;->bid(Lcom/fleapapa/helper/Item;DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/BidList;

.field private final synthetic val$bid:D

.field private final synthetic val$err:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$ok:Ljava/lang/Runnable;

.field private final synthetic val$qty:I


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/BidList;Ljava/lang/String;Lcom/fleapapa/helper/Item;DILandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$8;->this$0:Lcom/fleapapa/helper/BidList;

    iput-object p3, p0, Lcom/fleapapa/helper/BidList$8;->val$item:Lcom/fleapapa/helper/Item;

    iput-wide p4, p0, Lcom/fleapapa/helper/BidList$8;->val$bid:D

    iput p6, p0, Lcom/fleapapa/helper/BidList$8;->val$qty:I

    iput-object p7, p0, Lcom/fleapapa/helper/BidList$8;->val$handler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/fleapapa/helper/BidList$8;->val$ok:Ljava/lang/Runnable;

    iput-object p9, p0, Lcom/fleapapa/helper/BidList$8;->val$err:Ljava/lang/Runnable;

    .line 141
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 143
    iget-object v1, p0, Lcom/fleapapa/helper/BidList$8;->this$0:Lcom/fleapapa/helper/BidList;

    new-instance v0, Lcom/fleapapa/helper/Flea;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v0, v1, Lcom/fleapapa/helper/BidList;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v1, p0, Lcom/fleapapa/helper/BidList$8;->val$item:Lcom/fleapapa/helper/Item;

    const-string v2, "save"

    iget-wide v3, p0, Lcom/fleapapa/helper/BidList$8;->val$bid:D

    iget v5, p0, Lcom/fleapapa/helper/BidList$8;->val$qty:I

    invoke-virtual/range {v0 .. v5}, Lcom/fleapapa/helper/Flea;->item_bid(Lcom/fleapapa/helper/Item;Ljava/lang/String;DI)Z

    move-result v6

    .line 144
    .local v6, done:Z
    iget-object v0, p0, Lcom/fleapapa/helper/BidList$8;->this$0:Lcom/fleapapa/helper/BidList;

    iget-object v0, v0, Lcom/fleapapa/helper/BidList;->flea:Lcom/fleapapa/helper/Flea;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/BidList$8;->val$handler:Landroid/os/Handler;

    if-eqz v6, :cond_1

    iget-object v1, p0, Lcom/fleapapa/helper/BidList$8;->val$ok:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :cond_0
    return-void

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/BidList$8;->val$err:Ljava/lang/Runnable;

    goto :goto_0
.end method
