.class Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;
.super Ljava/lang/Object;
.source "ListViewFavoriteAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

.field private final synthetic val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->this$1:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

    iput-object p2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iput p3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->val$position:I

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    const v5, 0x7f040006

    .line 303
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v0, v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->this$1:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v1

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 304
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->this$1:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v0, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->this$1:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v0

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->val$position:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jellybus/fx_sub/Filter;

    iget-object v0, v0, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " <font color=#ff4433>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Favorite!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v0, v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->this$1:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v1

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 306
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 299
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v0, v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;->this$1:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    move-result-object v1

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    return-void
.end method
