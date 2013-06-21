.class Lcom/fleapapa/helper/ItemList$27;
.super Ljava/lang/Thread;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->match2(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$eachrow:Ljava/lang/Runnable;

.field private final synthetic val$finish:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemList$27;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemList$27;->val$eachrow:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/fleapapa/helper/ItemList$27;->val$finish:Ljava/lang/Runnable;

    .line 581
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 584
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/fleapapa/helper/ItemList;->isMatching:Z

    .line 585
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 586
    iget-object v2, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    new-instance v0, Lcom/fleapapa/helper/Flea;

    invoke-direct {v0, v8}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v0, v2, Lcom/fleapapa/helper/ItemList;->flea:Lcom/fleapapa/helper/Flea;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "&op="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v3, v3, Lcom/fleapapa/helper/ItemList;->op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList$27;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/fleapapa/helper/ItemList$27;->val$eachrow:Ljava/lang/Runnable;

    move-object v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/fleapapa/helper/Flea;->item_match(Lcom/fleapapa/helper/Interest;Ljava/lang/String;Lcom/fleapapa/helper/ItemRoute;Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 588
    :goto_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-boolean v8, v0, Lcom/fleapapa/helper/ItemList;->isMatching:Z

    .line 589
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList;->flea:Lcom/fleapapa/helper/Flea;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$27;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$27;->val$finish:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    :cond_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    new-instance v2, Lcom/fleapapa/helper/Flea;

    invoke-direct {v2, v8}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v2, v0, Lcom/fleapapa/helper/ItemList;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$27;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v3, v0, Lcom/fleapapa/helper/ItemList;->interest:Lcom/fleapapa/helper/Interest;

    sget-object v5, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget-object v6, p0, Lcom/fleapapa/helper/ItemList$27;->val$handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/fleapapa/helper/ItemList$27;->val$eachrow:Ljava/lang/Runnable;

    move-object v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fleapapa/helper/Flea;->item_match(Lcom/fleapapa/helper/Interest;Ljava/lang/String;Lcom/fleapapa/helper/ItemRoute;Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
