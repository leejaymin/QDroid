.class Lcom/fleapapa/helper/ItemList$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ItemList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/ItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemAdapter"
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
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/ItemList;)V
    .locals 1
    .parameter

    .prologue
    .line 650
    .local p0, this:Lcom/fleapapa/helper/ItemList$ItemAdapter;,"Lcom/fleapapa/helper/ItemList$ItemAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    .line 649
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 653
    .local p0, this:Lcom/fleapapa/helper/ItemList$ItemAdapter;,"Lcom/fleapapa/helper/ItemList$ItemAdapter<TT;>;"
    if-nez p2, :cond_3

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v8, v0

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/fleapapa/helper/ItemList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 655
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030014

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 659
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .local v5, ll:Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/fleapapa/helper/ItemList$ItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fleapapa/helper/Item;

    .line 660
    .local v3, item:Lcom/fleapapa/helper/Item;
    const v8, 0x7f0800da

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 661
    .local v4, iv:Landroid/widget/ImageView;
    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Lcom/fleapapa/helper/ItemList;->setIcon(Lcom/fleapapa/helper/Item;Landroid/widget/ImageView;Z)V

    .line 663
    const v8, 0x7f0800db

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v8, v3, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v9, v0

    const v10, 0x7f060088

    invoke-virtual {v9, v10}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget v12, v3, Lcom/fleapapa/helper/Item;->dist:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x4024

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, v3, Lcom/fleapapa/helper/Item;->nview:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget v12, v3, Lcom/fleapapa/helper/Item;->ncomt:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget v12, v3, Lcom/fleapapa/helper/Item;->nwatch:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    iget-object v12, v3, Lcom/fleapapa/helper/Item;->user:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    iget-object v9, v3, Lcom/fleapapa/helper/Item;->tpago:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v9, ""

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 665
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 668
    .local v6, s:Ljava/lang/String;
    const v8, 0x7f0800dc

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget v8, v3, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v8, v8, 0xff8

    if-nez v8, :cond_9

    iget v8, v3, Lcom/fleapapa/helper/Item;->type:I

    const/16 v9, 0x9

    if-eq v8, v9, :cond_0

    iget v8, v3, Lcom/fleapapa/helper/Item;->type:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_9

    .line 671
    :cond_0
    const v8, 0x7f0800dd

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    const v8, 0x7f0800de

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    iget v10, v3, Lcom/fleapapa/helper/Item;->currency:I

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "%.2f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, v3, Lcom/fleapapa/helper/Item;->buynow:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    const v8, 0x7f0800df

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v8, v3, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    const v8, 0x7f0800e0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v8, v3, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    const v8, 0x7f0800e1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v8, v3, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 676
    iget-boolean v8, v3, Lcom/fleapapa/helper/Item;->biddable:Z

    if-eqz v8, :cond_2

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v8, v0

    const v9, 0x7f060042

    invoke-virtual {v8, v9}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 678
    .local v7, sBid:Ljava/lang/String;
    const v8, 0x7f0800df

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v8, v3, Lcom/fleapapa/helper/Item;->nbid:I

    invoke-static {v8, v7}, Lcom/fleapapa/util/MyUtil;->plural(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    const v8, 0x7f0800e0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    iget v10, v3, Lcom/fleapapa/helper/Item;->currency:I

    aget-object v9, v9, v10

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "%.2f"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-wide v11, v3, Lcom/fleapapa/helper/Item;->mbid:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    iget-object v8, v3, Lcom/fleapapa/helper/Item;->tleft:Ljava/lang/String;

    if-eqz v8, :cond_1

    iget-object v8, v3, Lcom/fleapapa/helper/Item;->tleft:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_8

    .line 681
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v8, v0

    const v9, 0x7f060086

    invoke-virtual {v8, v9}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 683
    :goto_5
    const v8, 0x7f0800e1

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0           #this:Lcom/fleapapa/helper/ItemList$ItemAdapter;,"Lcom/fleapapa/helper/ItemList$ItemAdapter<TT;>;"
    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    .end local v7           #sBid:Ljava/lang/String;
    :cond_2
    :goto_6
    return-object v5

    .line 658
    .end local v3           #item:Lcom/fleapapa/helper/Item;
    .end local v4           #iv:Landroid/widget/ImageView;
    .end local v5           #ll:Landroid/widget/LinearLayout;
    .end local v6           #s:Ljava/lang/String;
    .restart local p0       #this:Lcom/fleapapa/helper/ItemList$ItemAdapter;,"Lcom/fleapapa/helper/ItemList$ItemAdapter<TT;>;"
    .restart local p1
    :cond_3
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v5, v0

    .restart local v5       #ll:Landroid/widget/LinearLayout;
    goto/16 :goto_0

    .line 666
    .end local p1
    .restart local v3       #item:Lcom/fleapapa/helper/Item;
    .restart local v4       #iv:Landroid/widget/ImageView;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v10, v0

    const v11, 0x7f060041

    invoke-virtual {v10, v11}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v12, v0

    iget-object v13, v3, Lcom/fleapapa/helper/Item;->tpago:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/fleapapa/util/MyUtil;->timeLeft(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 673
    .restart local v6       #s:Ljava/lang/String;
    :cond_5
    const/16 v8, 0x8

    goto/16 :goto_2

    .line 674
    :cond_6
    const/16 v8, 0x8

    goto/16 :goto_3

    .line 675
    :cond_7
    const/16 v8, 0x8

    goto/16 :goto_4

    .line 682
    .restart local v7       #sBid:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v8, v0

    const v9, 0x7f060087

    invoke-virtual {v8, v9}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v11, v0

    iget-object v12, v3, Lcom/fleapapa/helper/Item;->tleft:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/fleapapa/util/MyUtil;->timeLeft(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 687
    .end local v7           #sBid:Ljava/lang/String;
    :cond_9
    iget v8, v3, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_b

    .line 688
    const v8, 0x7f0800dd

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 689
    const v8, 0x7f0800de

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v3, Lcom/fleapapa/helper/Item;->qty:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    const v8, 0x7f0800df

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v8, v0

    iget v9, v3, Lcom/fleapapa/helper/Item;->type:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a

    const v9, 0x7f06008f

    :goto_7
    invoke-virtual {v8, v9}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget v8, v3, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 692
    const v8, 0x7f0800e0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fleapapa/helper/ItemList$ItemAdapter;->this$0:Lcom/fleapapa/helper/ItemList;

    move-object v8, v0

    const v9, 0x7f060090

    invoke-virtual {v8, v9}, Lcom/fleapapa/helper/ItemList;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 690
    :cond_a
    const v9, 0x7f06008e

    goto :goto_7

    .line 695
    :cond_b
    const v8, 0x7f0800dd

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0           #this:Lcom/fleapapa/helper/ItemList$ItemAdapter;,"Lcom/fleapapa/helper/ItemList$ItemAdapter<TT;>;"
    check-cast p0, Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6
.end method
