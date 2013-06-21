.class Lcom/fleapapa/helper/ItemView$18;
.super Ljava/lang/Thread;
.source "ItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->delete(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$runner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Lcom/fleapapa/helper/Item;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$18;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$18;->val$item:Lcom/fleapapa/helper/Item;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemView$18;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/fleapapa/helper/ItemView$18;->val$runner:Ljava/lang/Runnable;

    .line 505
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$18;->this$0:Lcom/fleapapa/helper/ItemView;

    new-instance v1, Lcom/fleapapa/helper/Flea;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v1, v0, Lcom/fleapapa/helper/ItemView;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$18;->val$item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/Flea;->item_del(Lcom/fleapapa/helper/Item;)Z

    .line 508
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$18;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemView;->flea:Lcom/fleapapa/helper/Flea;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$18;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$18;->val$runner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    :cond_0
    return-void
.end method
