.class Lcom/fleapapa/helper/ItemView$22;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$22;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$22;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$22;->val$item:Lcom/fleapapa/helper/Item;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 547
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$22;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 548
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$22;->this$0:Lcom/fleapapa/helper/ItemView;

    iget v0, v0, Lcom/fleapapa/helper/ItemView;->aid:I

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$22;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$22;->val$item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemView;->edit2(Lcom/fleapapa/helper/Item;)V

    .line 552
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$22;->this$0:Lcom/fleapapa/helper/ItemView;

    const v1, 0x7f06006e

    invoke-static {v1}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fleapapa/helper/ItemView$22;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v4, v4, Lcom/fleapapa/helper/ItemView;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v4, v4, Lcom/fleapapa/helper/Flea;->error:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
