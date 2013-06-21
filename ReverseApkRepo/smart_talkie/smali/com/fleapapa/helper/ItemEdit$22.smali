.class Lcom/fleapapa/helper/ItemEdit$22;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$22;->val$pdlg:Landroid/app/ProgressDialog;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 652
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget v0, v0, Lcom/fleapapa/helper/ItemEdit;->iid:I

    if-lez v0, :cond_1

    .line 653
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ItemEdit.save: old iid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v2, v2, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new iid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget v2, v2, Lcom/fleapapa/helper/ItemEdit;->iid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->iid:I

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    invoke-static {v0}, Lcom/fleapapa/helper/Item;->remove(Lcom/fleapapa/helper/Item;)V

    .line 659
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget v1, v1, Lcom/fleapapa/helper/ItemEdit;->iid:I

    iput v1, v0, Lcom/fleapapa/helper/Item;->iid:I

    .line 660
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    invoke-static {v0}, Lcom/fleapapa/helper/Item;->add(Lcom/fleapapa/helper/Item;)V

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    const v1, 0x7f060064

    invoke-static {v1}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget v1, v1, Lcom/fleapapa/helper/ItemEdit;->iid:I

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemEdit;->finish(I)V

    .line 667
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$22;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemEdit;->prompt()V

    goto :goto_0
.end method
