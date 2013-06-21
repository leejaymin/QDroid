.class Lcom/fleapapa/helper/ItemView$16;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->showVariables(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$16;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$16;->val$item:Lcom/fleapapa/helper/Item;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 459
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$16;->this$0:Lcom/fleapapa/helper/ItemView;

    const-class v2, Lcom/fleapapa/helper/BidList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "iid"

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$16;->val$item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->iid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$16;->this$0:Lcom/fleapapa/helper/ItemView;

    invoke-virtual {v1, v0}, Lcom/fleapapa/helper/ItemView;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method
