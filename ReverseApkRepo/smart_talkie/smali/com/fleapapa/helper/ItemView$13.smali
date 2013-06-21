.class Lcom/fleapapa/helper/ItemView$13;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->fetchBids(Lcom/fleapapa/helper/Item;)V
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$13;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$13;->val$item:Lcom/fleapapa/helper/Item;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$13;->this$0:Lcom/fleapapa/helper/ItemView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 425
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$13;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$13;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$13;->val$item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemView;->showVariables(Lcom/fleapapa/helper/Item;)V

    .line 427
    return-void
.end method
