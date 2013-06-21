.class Lcom/fleapapa/helper/ItemView$26;
.super Ljava/lang/Thread;
.source "ItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->watch(Lcom/fleapapa/helper/Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$done:Ljava/lang/Runnable;

.field private final synthetic val$fail:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$watch:Z


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Lcom/fleapapa/helper/Item;ZLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$26;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$26;->val$item:Lcom/fleapapa/helper/Item;

    iput-boolean p4, p0, Lcom/fleapapa/helper/ItemView$26;->val$watch:Z

    iput-object p5, p0, Lcom/fleapapa/helper/ItemView$26;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/fleapapa/helper/ItemView$26;->val$done:Ljava/lang/Runnable;

    iput-object p7, p0, Lcom/fleapapa/helper/ItemView$26;->val$fail:Ljava/lang/Runnable;

    .line 577
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 579
    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$26;->this$0:Lcom/fleapapa/helper/ItemView;

    new-instance v2, Lcom/fleapapa/helper/Flea;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v2, v1, Lcom/fleapapa/helper/ItemView;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$26;->val$item:Lcom/fleapapa/helper/Item;

    iget-boolean v3, p0, Lcom/fleapapa/helper/ItemView$26;->val$watch:Z

    invoke-virtual {v2, v1, v3}, Lcom/fleapapa/helper/Flea;->item_watch(Lcom/fleapapa/helper/Item;Z)Z

    move-result v0

    .line 580
    .local v0, ok:Z
    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$26;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$26;->val$done:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$26;->val$fail:Ljava/lang/Runnable;

    goto :goto_0
.end method
