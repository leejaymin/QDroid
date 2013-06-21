.class Lcom/fleapapa/helper/ItemView$5;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->add2Scroll(Lcom/fleapapa/helper/Item;)V
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$5;->val$item:Lcom/fleapapa/helper/Item;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/ItemView$5;)Lcom/fleapapa/helper/ItemView;
    .locals 1
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;

    .line 346
    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;

    const v4, 0x7f060019

    invoke-virtual {v2, v4}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    iget-object v4, p0, Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;

    const v5, 0x7f06001c

    invoke-virtual {v4, v5}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    new-instance v6, Lcom/fleapapa/helper/ItemView$5$1;

    iget-object v4, p0, Lcom/fleapapa/helper/ItemView$5;->val$item:Lcom/fleapapa/helper/Item;

    invoke-direct {v6, p0, v4}, Lcom/fleapapa/helper/ItemView$5$1;-><init>(Lcom/fleapapa/helper/ItemView$5;Lcom/fleapapa/helper/Item;)V

    .line 356
    iget-object v4, p0, Lcom/fleapapa/helper/ItemView$5;->this$0:Lcom/fleapapa/helper/ItemView;

    const v7, 0x7f06001d

    invoke-virtual {v4, v7}, Lcom/fleapapa/helper/ItemView;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 357
    new-instance v8, Lcom/fleapapa/helper/ItemView$5$2;

    invoke-direct {v8, p0}, Lcom/fleapapa/helper/ItemView$5$2;-><init>(Lcom/fleapapa/helper/ItemView$5;)V

    .line 361
    const/4 v9, 0x1

    move-object v4, v3

    move-object v10, v3

    .line 345
    invoke-static/range {v0 .. v10}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 362
    return-void
.end method
