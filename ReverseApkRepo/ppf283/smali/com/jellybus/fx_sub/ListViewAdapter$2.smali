.class Lcom/jellybus/fx_sub/ListViewAdapter$2;
.super Ljava/lang/Object;
.source "ListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx_sub/ListViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

.field private final synthetic val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/ListViewAdapter;ILcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    iput p2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jellybus/fx_sub/ListViewAdapter$2;)Lcom/jellybus/fx_sub/ListViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 273
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewAdapter;)[I

    move-result-object v2

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-boolean v1, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jellybus/fx_sub/SQLlite;->setMenu(Z)V

    .line 276
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->openDb()Z

    .line 277
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->createT()Z

    .line 278
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewAdapter;)[I

    move-result-object v2

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/jellybus/fx_sub/SQLlite;->deleteD(I)V

    .line 279
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->sql:Lcom/jellybus/fx_sub/SQLlite;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$1(Lcom/jellybus/fx_sub/ListViewAdapter;)Lcom/jellybus/fx_sub/SQLlite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jellybus/fx_sub/SQLlite;->closeDb()V

    .line 280
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewAdapter;)[I

    move-result-object v2

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 281
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 282
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v2, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I
    invoke-static {v3}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewAdapter;)[I

    move-result-object v3

    iget v4, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    sput-boolean v5, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    .line 318
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    iget v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    #calls: Lcom/jellybus/fx_sub/ListViewAdapter;->insertFavorite(I)V
    invoke-static {v1, v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$3(Lcom/jellybus/fx_sub/ListViewAdapter;I)V

    .line 289
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v1, v1, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->filter:[I
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$0(Lcom/jellybus/fx_sub/ListViewAdapter;)[I

    move-result-object v2

    iget v3, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jellybus/fx_sub/Filter;

    iput-boolean v5, v1, Lcom/jellybus/fx_sub/Filter;->isFavorites:Z

    .line 290
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    const v2, 0x7f0200b2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->cBox:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$2(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040008

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 293
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 294
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_group:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 295
    new-instance v0, Lcom/jellybus/fx_sub/ListViewAdapter$2$1;

    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$position:I

    invoke-direct {v0, p0, v1, v2}, Lcom/jellybus/fx_sub/ListViewAdapter$2$1;-><init>(Lcom/jellybus/fx_sub/ListViewAdapter$2;Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;I)V

    .line 314
    .local v0, aniListener:Landroid/view/animation/Animation$AnimationListener;
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 315
    iget-object v1, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->val$holder:Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;

    iget-object v1, v1, Lcom/jellybus/fx_sub/ListViewAdapter$ViewHolder;->text_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/jellybus/fx_sub/ListViewAdapter$2;->this$0:Lcom/jellybus/fx_sub/ListViewAdapter;

    #getter for: Lcom/jellybus/fx_sub/ListViewAdapter;->push_out:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/jellybus/fx_sub/ListViewAdapter;->access$4(Lcom/jellybus/fx_sub/ListViewAdapter;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    sput-boolean v5, Lcom/jellybus/fx_sub/PictureController;->isFavoriteChange:Z

    goto :goto_0
.end method
