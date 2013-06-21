.class Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;
.super Ljava/lang/Object;
.source "ListViewHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

.field private final synthetic val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;ILcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iput p2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;)Lcom/jellybus/fx_sub/ListViewHistoryAdapter;
    .locals 1
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 256
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

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

    .line 258
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 259
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 260
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 261
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v2

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 262
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 263
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

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

    .line 264
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 265
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v2, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v4, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v5, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->date:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$3(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    sput-boolean v6, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    .line 301
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iget v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

    #calls: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->insertFavorite(I)V
    invoke-static {v1, v2}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;I)V

    .line 274
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->filter:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v6, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 275
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 278
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$5(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 279
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$5(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 280
    new-instance v0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2$1;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$position:I

    invoke-direct {v0, p0, v1, v2}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2$1;-><init>(Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;I)V

    .line 297
    .local v0, aniListener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$5(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 298
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewHistoryAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewHistoryAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewHistoryAdapter;->access$5(Lcom/jellybus/fx_sub/ListViewHistoryAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    sput-boolean v6, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    goto/16 :goto_0
.end method
