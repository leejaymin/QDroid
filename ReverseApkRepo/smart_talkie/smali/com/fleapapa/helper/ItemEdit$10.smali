.class Lcom/fleapapa/helper/ItemEdit$10;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->edit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;

.field private final synthetic val$detail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemEdit$10;->val$detail:Landroid/widget/EditText;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const v5, 0x7f0800ae

    const v4, 0x7f0800a9

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 311
    if-eqz p2, :cond_1

    .line 313
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0, v4}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0, v5}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$10;->val$detail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fleapapa/helper/Item;->detail:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-boolean v0, v0, Lcom/fleapapa/helper/ItemEdit;->editing:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0, v4}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v1, v1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    invoke-virtual {v0, v5}, Lcom/fleapapa/helper/ItemEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$10;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemEdit;->item:Lcom/fleapapa/helper/Item;

    iget-boolean v1, v1, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 319
    goto :goto_1

    :cond_3
    move v1, v2

    .line 320
    goto :goto_2
.end method
