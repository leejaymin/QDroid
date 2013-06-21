.class Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;
.super Ljava/lang/Object;
.source "ListViewFavoriteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

.field private final synthetic val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;ILcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iput p2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;)Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 269
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 272
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 273
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 274
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v2

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 275
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 276
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 277
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v2, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v3, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    sput-boolean v5, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    .line 312
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    #calls: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->insertFavorite(I)V
    invoke-static {v1, v2}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$3(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;I)V

    .line 285
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->favorite_list:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v5, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 286
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 291
    new-instance v0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$position:I

    invoke-direct {v0, p0, v1, v2}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2$1;-><init>(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;I)V

    .line 308
    .local v0, aniListener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 309
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewFavoriteAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    sput-boolean v5, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    goto/16 :goto_0
.end method
