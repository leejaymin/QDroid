.class Lcom/fleapapa/helper/ItemList$20;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->createItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemList$20;->val$pdlg:Landroid/app/ProgressDialog;

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 428
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$20;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 429
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    iget v1, v1, Lcom/fleapapa/helper/ItemList;->aid:I

    if-eqz v1, :cond_0

    .line 431
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    const-class v2, Lcom/fleapapa/helper/ItemEdit;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "code"

    iget-object v2, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v2, v2, Lcom/fleapapa/helper/ItemList;->cat:Lcom/fleapapa/helper/Category;

    iget v2, v2, Lcom/fleapapa/helper/Category;->code:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 433
    const-string v1, "aid"

    iget-object v2, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    iget v2, v2, Lcom/fleapapa/helper/ItemList;->aid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    invoke-virtual {v1, v0, v5}, Lcom/fleapapa/helper/ItemList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 438
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    const v2, 0x7f06006e

    invoke-static {v2}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemList$20;->this$0:Lcom/fleapapa/helper/ItemList;

    iget-object v4, v4, Lcom/fleapapa/helper/ItemList;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v4, v4, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
