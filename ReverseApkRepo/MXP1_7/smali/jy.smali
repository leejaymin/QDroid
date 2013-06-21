.class public Ljy;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private ㅼ꽑嫄:Landroid/widget/CheckBox;

.field private 弱밧:Z

.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private final 궗:[Ljx;

.field private 먯꽌:I


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;Ljava/util/List;I)V
    .locals 3

    iput-object p1, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljx;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljx;

    iput-object v0, p0, Ljy;->궗:[Ljx;

    iput p3, p0, Ljy;->먯꽌:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->alertdialog_with_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lno;->footer:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Ljy;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    iget-object v0, p0, Ljy;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    sget v2, Lnt;->use_hw_audio_decoder:I

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v2, p0, Ljy;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    iget-object v0, p1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->洹몄쓽()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lnt;->select_audio_track:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p0, p3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {p1, v0, p0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private 癤욱븳援(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v1}, Lnb;->롩퐢()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljy;->弱밧:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v0, p0, Ljy;->弱밧:Z

    iget-object v1, p0, Ljy;->ㅼ꽑嫄:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    iget-object v0, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->洹몄쓽()Z

    move-result v0

    iget v3, p0, Ljy;->먯꽌:I

    if-ne p1, v3, :cond_2

    if-eq v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->ㅼ젣濡()V

    iget-object v0, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->弱방떙()Lgi;

    move-result-object v3

    invoke-virtual {v3}, Lgi;->먯껜蹂대떎()Lgd;

    move-result-object v0

    :try_start_0
    instance-of v4, v0, Lfw;

    if-eqz v4, :cond_4

    if-nez p1, :cond_4

    if-nez v1, :cond_4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lgi;->궗(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v1, v1, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    sget v2, Lnt;->error_cannot_switch_audio_track:I

    invoke-static {v0, v1, v2}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;I)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    :try_start_1
    sget v2, Lcom/mxtech/media/FFPlayer;->쇰뒗:I

    :cond_5
    iget-object v1, p0, Ljy;->궗:[Ljx;

    aget-object v1, v1, p1

    invoke-virtual {v3}, Lgi;->꾨뱾()Lcom/mxtech/media/FFPlayer;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lgi;->뚮Ц()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget v0, v1, Ljx;->궗:I

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1, v2}, Lcom/mxtech/media/FFPlayer;->changeAudioStream(IZI)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0, v4}, Lnb;->癤욱븳援(Lcom/mxtech/media/FFPlayer;)V

    iget v0, v1, Ljx;->궗:I

    invoke-virtual {v3, v0, v2}, Lgi;->궗(II)Z

    goto :goto_0

    :cond_7
    check-cast v0, Lcom/mxtech/media/FFPlayer;

    iget v1, v1, Ljx;->궗:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/mxtech/media/FFPlayer;->changeAudioStream(IZI)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Ljy;->궗:[Ljx;

    array-length v0, v0

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

    iget-object v0, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Ljy;->궗:[Ljx;

    aget-object v2, v2, p1

    iget-object v2, v2, Ljx;->癤욱븳援:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0, p2}, Ljy;->癤욱븳援(I)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Ljy;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    iget v0, p0, Ljy;->먯꽌:I

    invoke-direct {p0, v0}, Ljy;->癤욱븳援(I)V

    return-void
.end method
