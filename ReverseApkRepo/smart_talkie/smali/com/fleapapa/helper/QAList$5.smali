.class Lcom/fleapapa/helper/QAList$5;
.super Ljava/lang/Thread;
.source "QAList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/QAList;->submit_qa(Lcom/fleapapa/helper/QA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/QAList;

.field private final synthetic val$done:Ljava/lang/Runnable;

.field private final synthetic val$feedback:Ljava/lang/String;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$qa:Lcom/fleapapa/helper/QA;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/QAList;Ljava/lang/String;Lcom/fleapapa/helper/QA;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$5;->this$0:Lcom/fleapapa/helper/QAList;

    iput-object p3, p0, Lcom/fleapapa/helper/QAList$5;->val$qa:Lcom/fleapapa/helper/QA;

    iput-object p4, p0, Lcom/fleapapa/helper/QAList$5;->val$feedback:Ljava/lang/String;

    iput-object p5, p0, Lcom/fleapapa/helper/QAList$5;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/fleapapa/helper/QAList$5;->val$done:Ljava/lang/Runnable;

    .line 137
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$5;->this$0:Lcom/fleapapa/helper/QAList;

    new-instance v1, Lcom/fleapapa/helper/Flea;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v1, v0, Lcom/fleapapa/helper/QAList;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v0, p0, Lcom/fleapapa/helper/QAList$5;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v0, v0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$5;->val$qa:Lcom/fleapapa/helper/QA;

    iget-object v3, p0, Lcom/fleapapa/helper/QAList$5;->val$feedback:Ljava/lang/String;

    iget-object v4, p0, Lcom/fleapapa/helper/QAList$5;->this$0:Lcom/fleapapa/helper/QAList;

    iget v4, v4, Lcom/fleapapa/helper/QAList;->rating:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/fleapapa/helper/Flea;->item_qa(Lcom/fleapapa/helper/Item;Lcom/fleapapa/helper/QA;Ljava/lang/String;I)Z

    .line 140
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$5;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v0, v0, Lcom/fleapapa/helper/QAList;->flea:Lcom/fleapapa/helper/Flea;

    iget-boolean v0, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/QAList$5;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/QAList$5;->val$done:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_0
    return-void
.end method
