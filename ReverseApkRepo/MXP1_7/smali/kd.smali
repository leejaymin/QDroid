.class public Lkd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private 궗:I

.field private 먯꽌:I


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 3

    iput-object p1, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮벏(Lcom/mxtech/videoplayer/ActivityScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮벏(Lcom/mxtech/videoplayer/ActivityScreen;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "lock_target"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lkd;->먯꽌:I

    invoke-virtual {p0}, Lkd;->궗()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget v1, p0, Lkd;->먯꽌:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->먯꽌(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    :cond_0
    iget v1, p0, Lkd;->먯꽌:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget v2, p0, Lkd;->먯꽌:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityScreen;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->몃Ъ()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz p3, :cond_1

    iget v1, p0, Lkd;->먯꽌:I

    or-int/2addr v0, v1

    iput v0, p0, Lkd;->먯꽌:I

    :goto_1
    invoke-virtual {p0}, Lkd;->궗()V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    iget v1, p0, Lkd;->먯꽌:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lkd;->먯꽌:I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lkd;->먯꽌:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v3, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->紐낆옱(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->먯꽌(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    :cond_0
    iget v0, p0, Lkd;->먯꽌:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget v3, p0, Lkd;->먯꽌:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityScreen;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0, v2}, Lcom/mxtech/videoplayer/ActivityScreen;->弱밧(Lcom/mxtech/videoplayer/ActivityScreen;Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "lock_target"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lkd;->먯꽌:I

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lock_target"

    iget v2, p0, Lkd;->먯꽌:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    :cond_0
    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lnt;->lock_target:I

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v4, Lnj;->lock_targets:I

    const/4 v0, 0x2

    new-array v5, v0, [Z

    iget v0, p0, Lkd;->먯꽌:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    aput-boolean v0, v5, v2

    iget v0, p0, Lkd;->먯꽌:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    aput-boolean v2, v5, v1

    invoke-virtual {v3, v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x104000a

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lnt;->close:I

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0, v3, p0}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public 癤욱븳援()I
    .locals 1

    iget v0, p0, Lkd;->먯꽌:I

    return v0
.end method

.method public 궗()V
    .locals 2

    iget v0, p0, Lkd;->먯꽌:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lnn;->lock:I

    :goto_0
    iget v1, p0, Lkd;->궗:I

    if-ne v0, v1, :cond_1

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->紐낆옱(Lcom/mxtech/videoplayer/ActivityScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lnn;->rotation_locked:I

    goto :goto_0

    :cond_0
    sget v0, Lnn;->rotation_unlocked:I

    goto :goto_0

    :pswitch_1
    sget v0, Lnn;->lock_plus:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lkd;->궗:I

    iget-object v1, p0, Lkd;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮벏(Lcom/mxtech/videoplayer/ActivityScreen;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
