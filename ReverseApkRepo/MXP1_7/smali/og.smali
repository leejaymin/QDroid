.class public final Log;
.super Landroid/app/AlertDialog;

# interfaces
.implements Loi;
.implements Lqi;


# static fields
.field public static 癤욱븳援:I


# instance fields
.field private final ㅼ꽑嫄:[Landroid/view/View;

.field private final 弱밧:Lpb;

.field private final 洹:Lpv;

.field private final 궗:Loh;

.field private final 대쫫:Loj;

.field private final 먯껜蹂대떎:Loy;

.field private final 먯꽌:Lcom/mxtech/videoplayer/TunerTabLayout;

.field private final 몃Ъ:Lpo;

.field private final 쇰뒗:Los;


# direct methods
.method public constructor <init>(Landroid/content/Context;Loh;Lri;I)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    iput-object p2, p0, Log;->궗:Loh;

    invoke-virtual {p0}, Log;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->tuner:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Log;->setView(Landroid/view/View;)V

    sget v0, Lno;->tabList:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mxtech/videoplayer/TunerTabLayout;

    iput-object v0, p0, Log;->먯꽌:Lcom/mxtech/videoplayer/TunerTabLayout;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    sget v2, Lno;->screenPane:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    sget v2, Lno;->dragPane:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v6

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    sget v2, Lno;->navigationPane:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v7

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    sget v2, Lno;->subtitleTextPane:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v8

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    sget v2, Lno;->subtitleLayoutPane:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v9

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    const/4 v2, 0x5

    sget v3, Lno;->ssaPane:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    new-instance v1, Lpb;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v0, v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Log;->궗:Loh;

    invoke-direct {v1, p0, v0, v2, p3}, Lpb;-><init>(Log;Landroid/view/ViewGroup;Loh;Lri;)V

    iput-object v1, p0, Log;->弱밧:Lpb;

    new-instance v0, Loj;

    iget-object v1, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v2, v1, v6

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v4, p0, Log;->궗:Loh;

    move-object v1, p0

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Loj;-><init>(Log;Landroid/view/ViewGroup;Loi;Loh;Lri;)V

    iput-object v0, p0, Log;->대쫫:Loj;

    new-instance v1, Los;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v0, v0, v7

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Log;->궗:Loh;

    invoke-direct {v1, p0, v0, v2}, Los;-><init>(Log;Landroid/view/ViewGroup;Loh;)V

    iput-object v1, p0, Log;->쇰뒗:Los;

    new-instance v1, Lpv;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v0, v0, v8

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Log;->궗:Loh;

    invoke-direct {v1, p0, v0, v2, p3}, Lpv;-><init>(Log;Landroid/view/ViewGroup;Loh;Lri;)V

    iput-object v1, p0, Log;->洹:Lpv;

    new-instance v1, Lpo;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v0, v0, v9

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Log;->궗:Loh;

    invoke-direct {v1, p0, v0, v2, p3}, Lpo;-><init>(Log;Landroid/view/ViewGroup;Loh;Lri;)V

    iput-object v1, p0, Log;->몃Ъ:Lpo;

    new-instance v1, Loy;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Log;->궗:Loh;

    invoke-direct {v1, p0, v0, v2}, Loy;-><init>(Log;Landroid/view/ViewGroup;Loh;)V

    iput-object v1, p0, Log;->먯껜蹂대떎:Loy;

    iget-object v1, p0, Log;->대쫫:Loj;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v0, v0, v7

    sget v2, Lno;->use_gesture_seek:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Loj;->癤욱븳援(Landroid/widget/CheckBox;)V

    iget-object v1, p0, Log;->쇰뒗:Los;

    iget-object v0, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v0, v0, v6

    sget v2, Lno;->video_seeking:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Los;->癤욱븳援(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Log;->먯꽌:Lcom/mxtech/videoplayer/TunerTabLayout;

    invoke-virtual {v0, p0}, Lcom/mxtech/videoplayer/TunerTabLayout;->setListener(Lqi;)V

    iget-object v0, p0, Log;->먯꽌:Lcom/mxtech/videoplayer/TunerTabLayout;

    invoke-virtual {v0, p4}, Lcom/mxtech/videoplayer/TunerTabLayout;->癤욱븳援(I)V

    return-void
.end method

.method static 癤욱븳援(I[II)I
    .locals 4

    const/4 v0, 0x0

    array-length v3, p1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return p2

    :cond_0
    aget v2, p1, v1

    if-ne v2, p0, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method private 궗()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Log;->弱밧:Lpb;

    iget-boolean v0, v0, Lpb;->癤욱븳援:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Log;->쇰뒗:Los;

    iget-boolean v0, v0, Los;->癤욱븳援:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Log;->대쫫:Loj;

    iget-boolean v0, v0, Loj;->癤욱븳援:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Log;->洹:Lpv;

    iget-boolean v0, v0, Lpv;->癤욱븳援:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Log;->몃Ъ:Lpo;

    iget-boolean v0, v0, Lpo;->癤욱븳援:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Log;->먯껜蹂대떎:Loy;

    iget-boolean v0, v0, Loy;->癤욱븳援:Z

    if-eqz v0, :cond_7

    :cond_0
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Log;->弱밧:Lpb;

    iget-boolean v1, v1, Lpb;->癤욱븳援:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Log;->弱밧:Lpb;

    invoke-virtual {v1, v0}, Lpb;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    iget-object v1, p0, Log;->쇰뒗:Los;

    iget-boolean v1, v1, Los;->癤욱븳援:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Log;->쇰뒗:Los;

    invoke-virtual {v1, v0}, Los;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_2
    iget-object v1, p0, Log;->대쫫:Loj;

    iget-boolean v1, v1, Loj;->癤욱븳援:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Log;->대쫫:Loj;

    invoke-virtual {v1, v0}, Loj;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_3
    iget-object v1, p0, Log;->洹:Lpv;

    iget-boolean v1, v1, Lpv;->癤욱븳援:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Log;->洹:Lpv;

    invoke-virtual {v1, v0}, Lpv;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_4
    iget-object v1, p0, Log;->몃Ъ:Lpo;

    iget-boolean v1, v1, Lpo;->癤욱븳援:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Log;->몃Ъ:Lpo;

    invoke-virtual {v1, v0}, Lpo;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_5
    iget-object v1, p0, Log;->먯껜蹂대떎:Loy;

    iget-boolean v1, v1, Loy;->癤욱븳援:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Log;->먯껜蹂대떎:Loy;

    invoke-virtual {v1, v0}, Loy;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Log;->弱밧:Lpb;

    iput-boolean v2, v0, Lpb;->癤욱븳援:Z

    iget-object v0, p0, Log;->쇰뒗:Los;

    iput-boolean v2, v0, Los;->癤욱븳援:Z

    iget-object v0, p0, Log;->대쫫:Loj;

    iput-boolean v2, v0, Loj;->癤욱븳援:Z

    iget-object v0, p0, Log;->洹:Lpv;

    iput-boolean v2, v0, Lpv;->癤욱븳援:Z

    iget-object v0, p0, Log;->몃Ъ:Lpo;

    iput-boolean v2, v0, Lpo;->癤욱븳援:Z

    iget-object v0, p0, Log;->먯껜蹂대떎:Loy;

    iput-boolean v2, v0, Loy;->癤욱븳援:Z

    :cond_7
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Log;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v2, 0x3e99999a

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Log;->궗()V

    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    invoke-direct {p0}, Log;->궗()V

    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method

.method public 癤욱븳援()V
    .locals 0

    invoke-virtual {p0}, Log;->dismiss()V

    return-void
.end method

.method public 癤욱븳援(Landroid/widget/TextView;I)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    sput p2, Log;->癤욱븳援:I

    return-void

    :cond_0
    iget-object v2, p0, Log;->ㅼ꽑嫄:[Landroid/view/View;

    aget-object v3, v2, v0

    if-ne p2, v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method
