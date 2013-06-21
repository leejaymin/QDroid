.class Lcom/fleapapa/helper/ItemView$19;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->edit2(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$19;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$19;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$19;->val$item:Lcom/fleapapa/helper/Item;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 518
    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$19;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 520
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$19;->this$0:Lcom/fleapapa/helper/ItemView;

    const-class v2, Lcom/fleapapa/helper/ItemEdit;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 521
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "iid"

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$19;->val$item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string v1, "code"

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$19;->val$item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->code:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    const-string v1, "aid"

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$19;->this$0:Lcom/fleapapa/helper/ItemView;

    iget v2, v2, Lcom/fleapapa/helper/ItemView;->aid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 524
    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$19;->this$0:Lcom/fleapapa/helper/ItemView;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/ItemView;->startActivity(Landroid/content/Intent;)V

    .line 525
    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$19;->val$item:Lcom/fleapapa/helper/Item;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/fleapapa/helper/Item;->refetch:Z

    .line 526
    return-void
.end method
