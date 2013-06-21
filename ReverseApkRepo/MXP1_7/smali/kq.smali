.class public Lkq;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private 궗:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;Lkq;)V
    .locals 0

    invoke-direct {p0, p1}, Lkq;-><init>(Lcom/mxtech/videoplayer/ActivityScreen;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lkq;->궗:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lkq;->궗:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkp;

    iget-object v1, v1, Lkp;->癤욱븳援:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ쬆(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lkq;->궗:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkp;

    iget v1, v0, Lkp;->궗:I

    if-ltz v1, :cond_2

    iget v1, v0, Lkp;->궗:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string v1, "100%"

    :goto_1
    iget v0, v0, Lkp;->궗:I

    sput v0, Lms;->뚮젮議뚮떎怨:I

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mxtech/videoplayer/ActivityScreen;->弱밧(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    invoke-static {v0, v3}, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v2, Lms;->뚮젮議뚮떎怨:I

    invoke-virtual {v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(I)V

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->앸ぐ(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->꾩(Lcom/mxtech/videoplayer/ActivityScreen;)V

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->洹멸(Lcom/mxtech/videoplayer/ActivityScreen;)Landroid/view/SurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v3}, Lcom/mxtech/videoplayer/ActivityScreen;->洹멸(Lcom/mxtech/videoplayer/ActivityScreen;)Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Ljava/lang/String;II)V

    :goto_2
    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->대쫫:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v2, Lnt;->zoom_inside:I

    invoke-virtual {v1, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v2, Lnt;->zoom_stretch:I

    invoke-virtual {v1, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v2, Lnt;->zoom_crop:I

    invoke-virtual {v1, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget v2, v0, Lkp;->먯꽌:F

    iget-object v3, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v3, v3, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v3}, Lnb;->먯껜蹂대떎()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->쇰뒗(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget v2, v0, Lkp;->먯꽌:F

    iget-object v3, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v3, v3, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v3}, Lnb;->꾨뱾()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->弱밧(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄곗쓽(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v2

    iget-object v3, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v3}, Lcom/mxtech/videoplayer/ActivityScreen;->李(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;II)V

    iget-object v1, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v0, v0, Lkp;->먯꽌:F

    const/high16 v3, 0x42c8

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄곗쓽(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v2

    iget-object v3, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v3}, Lcom/mxtech/videoplayer/ActivityScreen;->李(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Ljava/lang/String;II)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ쬆(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->弱방떙(Lcom/mxtech/videoplayer/ActivityScreen;)V

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->대떎(Lcom/mxtech/videoplayer/ActivityScreen;)V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 13

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/high16 v12, 0x3f00

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v4, v4, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v4}, Lnb;->롩퐢()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v4}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v4}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ쬆(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v4, v4, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v4}, Lnb;->먯껜蹂대떎()I

    move-result v4

    iget-object v5, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v5, v5, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v5}, Lnb;->꾨뱾()I

    move-result v5

    const/16 v6, 0x8

    if-le v4, v6, :cond_0

    const/16 v6, 0x8

    if-le v5, v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lkq;->궗:Ljava/util/ArrayList;

    iget-object v6, p0, Lkq;->궗:Ljava/util/ArrayList;

    new-instance v7, Lkp;

    iget-object v8, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v9, Lnt;->zoom_inside:I

    invoke-virtual {v8, v9}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lkp;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lkq;->궗:Ljava/util/ArrayList;

    new-instance v7, Lkp;

    iget-object v8, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v9, Lnt;->zoom_stretch:I

    invoke-virtual {v8, v9}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Lkp;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lkq;->궗:Ljava/util/ArrayList;

    new-instance v7, Lkp;

    iget-object v8, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v9, Lnt;->zoom_crop:I

    invoke-virtual {v8, v9}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Lkp;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lkq;->궗:Ljava/util/ArrayList;

    new-instance v7, Lkp;

    const-string v8, "100%"

    invoke-direct {v7, v8, v2}, Lkp;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v6}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄곗쓽(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v6

    if-nez v6, :cond_2

    sget v6, Lms;->뚮젮議뚮떎怨:I

    packed-switch v6, :pswitch_data_0

    :cond_2
    move v0, v3

    :goto_1
    :pswitch_0
    iget-object v2, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, v2, Lcom/mxtech/videoplayer/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    invoke-virtual {v2}, Lcom/mxtech/videoplayer/TopLayout;->getWidth()I

    move-result v6

    iget-object v2, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, v2, Lcom/mxtech/videoplayer/ActivityScreen;->洹:Lcom/mxtech/videoplayer/TopLayout;

    invoke-virtual {v2}, Lcom/mxtech/videoplayer/TopLayout;->getHeight()I

    move-result v7

    const/high16 v2, 0x3fc0

    :goto_2
    int-to-float v8, v4

    mul-float/2addr v8, v2

    int-to-float v9, v5

    mul-float/2addr v9, v2

    int-to-float v10, v6

    cmpl-float v10, v8, v10

    if-gez v10, :cond_3

    int-to-float v10, v7

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    :cond_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lnt;->zoom:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, p0, v0, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move v0, v1

    goto/16 :goto_0

    :pswitch_1
    move v0, v1

    goto :goto_1

    :pswitch_2
    move v0, v2

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    iget-object v9, p0, Lkq;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v9}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄곗쓽(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5

    iget-object v0, p0, Lkq;->궗:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_5
    iget-object v8, p0, Lkq;->궗:Ljava/util/ArrayList;

    new-instance v9, Lkp;

    new-instance v10, Ljava/lang/StringBuilder;

    div-float v11, v2, v12

    float-to-int v11, v11

    mul-int/lit8 v11, v11, 0x32

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v2}, Lkp;-><init>(Ljava/lang/CharSequence;F)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-float/2addr v2, v12

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
