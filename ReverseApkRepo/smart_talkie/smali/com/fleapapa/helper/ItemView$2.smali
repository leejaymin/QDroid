.class Lcom/fleapapa/helper/ItemView$2;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

.field private final synthetic val$rgrp:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;Landroid/widget/RadioGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$2;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$2;->val$rgrp:Landroid/widget/RadioGroup;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 8
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const v7, 0x7f0800eb

    const v6, 0x7f0800ea

    const v5, 0x7f0800e9

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 285
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget v0, v0, Lcom/fleapapa/helper/Item;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 287
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$rgrp:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->type:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->type:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->type:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v0, v0, Lcom/fleapapa/helper/Item;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$2;->val$item:Lcom/fleapapa/helper/Item;

    iget v1, v1, Lcom/fleapapa/helper/Item;->type:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 296
    return-void

    .line 288
    :sswitch_0
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$rgrp:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 289
    :sswitch_1
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$rgrp:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 290
    :sswitch_2
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$2;->val$rgrp:Landroid/widget/RadioGroup;

    const v1, 0x7f0800ec

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    :cond_0
    move v1, v4

    .line 292
    goto :goto_1

    :cond_1
    move v1, v4

    .line 293
    goto :goto_2

    :cond_2
    move v1, v4

    .line 294
    goto :goto_3

    :cond_3
    move v1, v4

    .line 295
    goto :goto_4

    .line 285
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0x12 -> :sswitch_0
    .end sparse-switch
.end method
