.class Lcom/jellybus/fx/Activity_FX$1;
.super Ljava/lang/Object;
.source "Activity_FX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_FX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_FX;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_FX;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 373
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "All effects"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-static {}, Lcom/jellybus/fx/Juliet;->changeThumbPreviewIndex()V

    .line 376
    invoke-static {}, Lcom/jellybus/fx/Juliet;->removeThumnailIndex()V

    .line 377
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->removeBitmap()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$1(Lcom/jellybus/fx/Activity_FX;)V

    .line 379
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 382
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->removeAdapterBitmap()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$3(Lcom/jellybus/fx/Activity_FX;)V

    .line 384
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 385
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 386
    .local v0, intent_main:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v1, v0}, Lcom/jellybus/fx/Activity_FX;->startActivity(Landroid/content/Intent;)V

    .line 387
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_FX;->finish()V

    .line 388
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    const/high16 v2, 0x10a

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Lcom/jellybus/fx/Activity_FX;->overridePendingTransition(II)V

    .line 408
    .end local v0           #intent_main:Landroid/content/Intent;
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$4(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->group_adapter:Lcom/jellybus/fx_sub/ListViewAdapter;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$4(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->bitmap_recycle()V

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    const-string v2, "All effects"

    #setter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_FX;->access$5(Lcom/jellybus/fx/Activity_FX;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    const-string v2, "All effects"

    #setter for: Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_FX;->access$6(Lcom/jellybus/fx/Activity_FX;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$7(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 397
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$7(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$8(Lcom/jellybus/fx/Activity_FX;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001d

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 398
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    .line 399
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$9(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 401
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$10(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#ff4433"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$11(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$12(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "#333333"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 405
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "All effects (200)"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$1;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->ani:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$14(Lcom/jellybus/fx/Activity_FX;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method
