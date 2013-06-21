.class Lcom/jellybus/fx/Activity_FX$7;
.super Ljava/lang/Object;
.source "Activity_FX.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_FX;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 273
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 269
    return-void
.end method

.method public onPageSelected(I)V
    .locals 8
    .parameter "page"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 201
    if-nez p1, :cond_6

    .line 202
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$10(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#ff4433"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$11(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$12(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->menu_temp:Ljava/lang/String;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$19(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_FX;->access$5(Lcom/jellybus/fx/Activity_FX;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "All effects"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Favorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "History"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "All effects (200)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->ani:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$14(Lcom/jellybus/fx/Activity_FX;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    return-void

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->setGroupView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$20(Lcom/jellybus/fx/Activity_FX;)V

    .line 212
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Professional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> Pro ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Color Splash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> C.S ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Black & White"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> B & W ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "All> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$0(Lcom/jellybus/fx/Activity_FX;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/jellybus/fx_sub/FilterAdapter;->getGroupCount(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 222
    :cond_6
    if-ne p1, v6, :cond_b

    .line 224
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$7(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$21(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    if-eqz v0, :cond_8

    .line 226
    :cond_7
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$21(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v0

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    if-eqz v0, :cond_9

    .line 228
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    new-instance v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->getFavoriteFilterList()Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$22(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_FX;->access$23(Lcom/jellybus/fx/Activity_FX;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V

    #setter for: Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_FX;->access$24(Lcom/jellybus/fx/Activity_FX;Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)V

    .line 236
    :goto_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    .line 239
    :cond_8
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$25(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$21(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$7(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->listview1:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$25(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$9(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Favorite ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->count_fav:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$26(Lcom/jellybus/fx/Activity_FX;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$10(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$11(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#ff4433"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$12(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    const-string v1, "Favorites"

    #setter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_FX;->access$5(Lcom/jellybus/fx/Activity_FX;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_9
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$21(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    if-nez v0, :cond_a

    .line 231
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    new-instance v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->favorite_list:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$16(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_FX;->access$23(Lcom/jellybus/fx/Activity_FX;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V

    #setter for: Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_FX;->access$24(Lcom/jellybus/fx/Activity_FX;Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)V

    goto/16 :goto_1

    .line 234
    :cond_a
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fav_adapter:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$21(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->getFavoriteFilterList()Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$22(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->refreshList(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 248
    :cond_b
    if-ne p1, v7, :cond_1

    .line 249
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$7(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$27(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    move-result-object v0

    if-nez v0, :cond_c

    .line 252
    iget-object v6, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    new-instance v0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_FX;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #calls: Lcom/jellybus/fx/Activity_FX;->getHistoryFilterList()Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$28(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->history_date_list:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_FX;->access$29(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->thumbnail:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/jellybus/fx/Activity_FX;->access$23(Lcom/jellybus/fx/Activity_FX;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;
    invoke-static {v5}, Lcom/jellybus/fx/Activity_FX;->access$15(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/FilterAdapter;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/graphics/Bitmap;Lcom/jellybus/fx_sub/FilterAdapter;)V

    #setter for: Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;
    invoke-static {v6, v0}, Lcom/jellybus/fx/Activity_FX;->access$30(Lcom/jellybus/fx/Activity_FX;Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)V

    .line 254
    :cond_c
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$31(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->his_adapter:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$27(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->mLayerView:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$7(Lcom/jellybus/fx/Activity_FX;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->listview2:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_FX;->access$31(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->adapter:Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$9(Lcom/jellybus/fx/Activity_FX;)Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx/Activity_FX$MyPagerAdapter;->notifyDataSetChanged()V

    .line 258
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$13(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "History ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->count_his:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_FX;->access$32(Lcom/jellybus/fx/Activity_FX;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_all:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$10(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_fav:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$11(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#333333"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->fx_text_his:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$12(Lcom/jellybus/fx/Activity_FX;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "#ff4433"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$7;->this$0:Lcom/jellybus/fx/Activity_FX;

    const-string v1, "History"

    #setter for: Lcom/jellybus/fx/Activity_FX;->current_group_name:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_FX;->access$5(Lcom/jellybus/fx/Activity_FX;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
