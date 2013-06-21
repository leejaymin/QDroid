.class Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InterestSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/InterestSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CategoryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/InterestSelector;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/InterestSelector;)V
    .locals 1
    .parameter

    .prologue
    .line 362
    .local p0, this:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;,"Lcom/fleapapa/helper/InterestSelector$CategoryAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->this$0:Lcom/fleapapa/helper/InterestSelector;

    .line 361
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 364
    .local p0, this:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;,"Lcom/fleapapa/helper/InterestSelector$CategoryAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 367
    .local v0, cat:Lcom/fleapapa/helper/Category;
    sget-object v6, Lcom/fleapapa/helper/InterestSelector;->inflated:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .local v4, ll:Landroid/widget/LinearLayout;
    if-nez v4, :cond_0

    .line 368
    invoke-static {}, Lcom/fleapapa/util/MyUtil;->profile()J

    .line 369
    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->this$0:Lcom/fleapapa/helper/InterestSelector;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/fleapapa/helper/InterestSelector;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 370
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4           #ll:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 376
    .restart local v4       #ll:Landroid/widget/LinearLayout;
    sget-object v6, Lcom/fleapapa/helper/InterestSelector;->inflated:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-boolean v6, v0, Lcom/fleapapa/helper/Category;->interested:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Lcom/fleapapa/helper/Category;->expanded:Z

    if-nez v6, :cond_2

    const/4 v6, 0x1

    move v2, v6

    .line 382
    .local v2, highlight:Z
    :goto_0
    const v6, 0x7f08007a

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/fleapapa/helper/Category;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    const v6, 0x7f08007a

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const v6, -0x300031

    :goto_1
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    const v6, 0x7f08007c

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-boolean v6, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    if-eqz v6, :cond_4

    const/high16 v6, -0xb1

    :goto_2
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    const v6, 0x7f08007d

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget-boolean v6, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    if-eqz v6, :cond_5

    const v6, -0xffffb1

    :goto_3
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-boolean v6, v0, Lcom/fleapapa/helper/Category;->expanded:Z

    if-nez v6, :cond_6

    iget v6, v0, Lcom/fleapapa/helper/Category;->nitem:I

    if-gtz v6, :cond_1

    iget v6, v0, Lcom/fleapapa/helper/Category;->nintr:I

    if-lez v6, :cond_6

    :cond_1
    const/4 v6, 0x1

    move v5, v6

    .line 387
    .local v5, shownum:Z
    :goto_4
    const v6, 0x7f08007c

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v6, v0, Lcom/fleapapa/helper/Category;->nitem:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    const v6, 0x7f08007d

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v6, v0, Lcom/fleapapa/helper/Category;->nintr:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const v6, 0x7f08007b

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_7

    const/4 v6, 0x0

    :goto_5
    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 391
    const v6, 0x7f080079

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/InterestSelector$ExpandView;

    .line 392
    .local v1, expv:Lcom/fleapapa/helper/InterestSelector$ExpandView;
    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->this$0:Lcom/fleapapa/helper/InterestSelector;

    iput-object v6, v1, Lcom/fleapapa/helper/InterestSelector$ExpandView;->act:Lcom/fleapapa/helper/InterestSelector;

    .line 393
    iput-object v0, v1, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    .line 394
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v0, Lcom/fleapapa/helper/Category;->level:I

    mul-int/lit8 v7, v7, 0x16

    add-int/lit8 v7, v7, 0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Lcom/fleapapa/helper/InterestSelector$ExpandView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    return-object v4

    .line 381
    .end local v1           #expv:Lcom/fleapapa/helper/InterestSelector$ExpandView;
    .end local v2           #highlight:Z
    .end local v5           #shownum:Z
    .restart local p1
    :cond_2
    const/4 v6, 0x0

    move v2, v6

    goto/16 :goto_0

    .line 383
    .end local p1
    .restart local v2       #highlight:Z
    :cond_3
    const/4 v6, -0x1

    goto/16 :goto_1

    .line 384
    :cond_4
    const v6, -0x300031

    goto :goto_2

    .line 385
    :cond_5
    const v6, -0x303001

    goto :goto_3

    .line 386
    :cond_6
    const/4 v6, 0x0

    move v5, v6

    goto :goto_4

    .line 389
    .restart local v5       #shownum:Z
    :cond_7
    const/16 v6, 0x8

    goto :goto_5
.end method
