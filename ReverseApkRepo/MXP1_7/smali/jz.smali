.class public Ljz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 5

    iput-object p1, p0, Ljz;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->먮(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubView;->getSubtitleCount()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    new-array v3, v1, [Z

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->subtitle:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {p1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->먮(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mxtech/videoplayer/SubView;->궗(I)Lhg;

    move-result-object v4

    invoke-interface {v4}, Lhg;->대쫫()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->먮(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/mxtech/videoplayer/SubView;->먯꽌(I)Z

    move-result v4

    aput-boolean v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Ljz;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->먮(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/SubView;->getSubtitleCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Ljz;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->먮(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mxtech/videoplayer/SubView;->궗(I)Lhg;

    move-result-object v0

    invoke-interface {v0}, Lhg;->ㅼ꽑嫄()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ljz;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, p0, Ljz;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v3, Lnt;->not_supported_subtitle_with_name:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Lhg;->대쫫()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljz;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->먮(Lcom/mxtech/videoplayer/ActivityScreen;)Lcom/mxtech/videoplayer/SubView;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/mxtech/videoplayer/SubView;->癤욱븳援(IZ)V

    goto :goto_0
.end method
