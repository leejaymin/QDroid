.class Lcom/fleapapa/helper/InterestSelector$12;
.super Ljava/lang/Thread;
.source "InterestSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/InterestSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/InterestSelector;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$runner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/InterestSelector;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$12;->this$0:Lcom/fleapapa/helper/InterestSelector;

    iput-object p3, p0, Lcom/fleapapa/helper/InterestSelector$12;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/fleapapa/helper/InterestSelector$12;->val$runner:Ljava/lang/Runnable;

    .line 200
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector$12;->this$0:Lcom/fleapapa/helper/InterestSelector;

    new-instance v1, Lcom/fleapapa/helper/Flea;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v1, v0, Lcom/fleapapa/helper/InterestSelector;->flea:Lcom/fleapapa/helper/Flea;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/Flea;->flea_hello(Z)Z

    .line 203
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector$12;->this$0:Lcom/fleapapa/helper/InterestSelector;

    iget-object v0, v0, Lcom/fleapapa/helper/InterestSelector;->flea:Lcom/fleapapa/helper/Flea;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector$12;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector$12;->val$runner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_0
    return-void
.end method
