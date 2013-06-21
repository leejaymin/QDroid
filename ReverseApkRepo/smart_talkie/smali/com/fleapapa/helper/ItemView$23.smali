.class Lcom/fleapapa/helper/ItemView$23;
.super Ljava/lang/Thread;
.source "ItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->edit(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$runner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$23;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$23;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemView$23;->val$runner:Ljava/lang/Runnable;

    .line 554
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$23;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$23;->this$0:Lcom/fleapapa/helper/ItemView;

    new-instance v2, Lcom/fleapapa/helper/Flea;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v2, v1, Lcom/fleapapa/helper/ItemView;->flea:Lcom/fleapapa/helper/Flea;

    invoke-virtual {v2}, Lcom/fleapapa/helper/Flea;->item_getauth()I

    move-result v1

    iput v1, v0, Lcom/fleapapa/helper/ItemView;->aid:I

    .line 557
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$23;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$23;->val$runner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method
