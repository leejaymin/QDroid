.class public Lkh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private 궗:Z

.field private 먯꽌:Z


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 0

    iput-object p1, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;Lkh;)V
    .locals 0

    invoke-direct {p0, p1}, Lkh;-><init>(Lcom/mxtech/videoplayer/ActivityScreen;)V

    return-void
.end method

.method private 癤욱븳援()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lkh;->궗:Z

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "shuffle"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkh;->먯꽌:Z

    sget-object v1, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v2, "loop"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "shuffle"

    iget-boolean v2, p0, Lkh;->궗:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "loop"

    iget-boolean v2, p0, Lkh;->먯꽌:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lkh;->癤욱븳援()V

    iget-object v0, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮Ц()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-nez p2, :cond_0

    iput-boolean p3, p0, Lkh;->궗:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p3, p0, Lkh;->먯꽌:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->롩퐢()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮Ц()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    invoke-direct {p0}, Lkh;->癤욱븳援()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "shuffle"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lkh;->궗:Z

    sget-object v2, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v3, "loop"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lkh;->먯꽌:Z

    new-array v2, v5, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v4, Lnt;->shuffle:I

    invoke-virtual {v3, v4}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    sget v4, Lnt;->loop:I

    invoke-virtual {v3, v4}, Lcom/mxtech/videoplayer/ActivityScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-array v3, v5, [Z

    iget-boolean v4, p0, Lkh;->궗:Z

    aput-boolean v4, v3, v0

    iget-boolean v0, p0, Lkh;->먯꽌:Z

    aput-boolean v0, v3, v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lnt;->next:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v2, Lnt;->close:I

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lkh;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2, v0, p0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move v0, v1

    goto :goto_0
.end method
