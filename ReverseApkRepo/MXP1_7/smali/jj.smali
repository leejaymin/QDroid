.class public Ljj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

.field private 궗:Landroid/preference/Preference;

.field private 먯꽌:Ljava/io/File;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V
    .locals 0

    iput-object p1, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljj;)V
    .locals 0

    invoke-direct {p0, p1}, Ljj;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    return-void
.end method

.method static synthetic 癤욱븳援(Ljj;)Lcom/mxtech/videoplayer/ActivityPreferences;
    .locals 1

    iget-object v0, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    return-object v0
.end method

.method private 癤욱븳援()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->restart_app_to_change_codec:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    new-instance v1, Ljk;

    invoke-direct {v1, p0}, Ljk;-><init>(Ljj;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private 癤욱븳援(Ljava/io/File;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljj;->먯꽌:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljj;->궗:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "custom_codec"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Ljj;->궗:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Ljj;->癤욱븳援()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p1, Lll;

    invoke-virtual {p1}, Lll;->궗()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj;->癤욱븳援(Ljava/io/File;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Ljj;->먯꽌:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljj;->궗:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "custom_codec"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "libavutil.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "libavcodec.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "libswresample.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "libswscale.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "libavformat.so"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v0, p0, Ljj;->궗:Landroid/preference/Preference;

    sget v1, Lnt;->custom_codec_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-direct {p0}, Ljj;->癤욱븳援()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfm;->궗(Landroid/content/DialogInterface;)V

    check-cast p1, Lll;

    invoke-virtual {p1}, Lll;->癤욱븳援()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj;->癤욱븳援(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Ljj;->궗:Landroid/preference/Preference;

    new-instance v3, Lll;

    iget-object v0, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {v3, v0}, Lll;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "custom_codec"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v6, p0, Ljj;->먯꽌:Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_1
    sget v4, Lnt;->custom_codec_select:I

    invoke-virtual {v3, v4}, Lll;->setTitle(I)V

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "so"

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Lll;->癤욱븳援([Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lll;->癤욱븳援(Ljava/io/File;)V

    const/4 v0, -0x1

    iget-object v1, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, p0}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x3

    iget-object v1, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    sget v4, Lnt;->use_default_codec:I

    invoke-virtual {v1, v4}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, p0}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    iget-object v1, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    const/high16 v4, 0x104

    invoke-virtual {v1, v4}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v6}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3, p0}, Lll;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Ljj;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v3}, Lll;->show()V

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljj;->먯꽌:Ljava/io/File;

    iget-object v0, p0, Ljj;->먯꽌:Ljava/io/File;

    goto :goto_1
.end method
