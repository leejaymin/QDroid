.class public Lkk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private ㅼ꽑嫄:I

.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

.field private 궗:Landroid/view/View;

.field private 먯꽌:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityScreen;)V
    .locals 4

    iput-object p1, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnp;->resume_last_ask:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lno;->how_to_reset:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lkk;->궗:Landroid/view/View;

    sget v0, Lno;->use_by_default:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lkk;->먯꽌:Landroid/widget/CheckBox;

    iget-object v0, p0, Lkk;->먯꽌:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->resume_last:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->resume:I

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->start_over:I

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->먯껜蹂대떎(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Lee;->癤욱븳援(Landroid/view/Window;)V

    :cond_1
    iget-object v1, p1, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p1}, Lcom/mxtech/videoplayer/ActivityScreen;->꾨뱾(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p1, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v1, v0}, Lfm;->궗(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v1, p0, Lkk;->궗:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lkk;->ㅼ꽑嫄:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->꾨뱾(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityScreen;I)V

    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    iget v0, p0, Lkk;->ㅼ꽑嫄:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->finish()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄(Lcom/mxtech/videoplayer/ActivityScreen;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lkk;->먯꽌:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "resume_last"

    iget v0, p0, Lkk;->ㅼ꽑嫄:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    const-string v0, "resume"

    :goto_2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->뚮Ц()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnb;->궗(Z)V

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0}, Lql;->癤욱븳援(I)Lql;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, v1}, Lql;->궗(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lql;->먯꽌()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_3
    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v2}, Lcom/mxtech/videoplayer/ActivityScreen;->弱밧(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v2

    iget-object v3, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v3}, Lcom/mxtech/videoplayer/ActivityScreen;->뚮Ц(Lcom/mxtech/videoplayer/ActivityScreen;)B

    move-result v3

    iget-object v4, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-static {v4}, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧(Lcom/mxtech/videoplayer/ActivityScreen;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityScreen;Landroid/net/Uri;IBI)V

    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v0, v0, Lcom/mxtech/videoplayer/ActivityScreen;->붿슧:Lnb;

    invoke-virtual {v0}, Lnb;->앸ぐ()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v0}, Lql;->먯꽌()V

    throw v2
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/mxtech/videoplayer/ActivityScreen;->ㅼ꽑嫄:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityScreen;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, p0, Lkk;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityScreen;

    iget-object v2, v2, Lcom/mxtech/videoplayer/ActivityScreen;->癤욱븳援:Lfm;

    sget v3, Lnt;->error_database:I

    invoke-static {v0, v2, v3}, Lfn;->癤욱븳援(Landroid/content/Context;Lfm;I)Landroid/app/AlertDialog;

    goto :goto_3

    :cond_3
    const-string v0, "startover"

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
