.class public Ljn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

.field private 궗:Landroid/preference/Preference;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V
    .locals 0

    iput-object p1, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljn;)V
    .locals 0

    invoke-direct {p0, p1}, Ljn;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    check-cast p1, Lll;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lll;->궗()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ljn;->궗:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "subtitle_folder"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Ljn;->궗:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljn;->궗:Landroid/preference/Preference;

    sget v1, Lnt;->subtitle_folder_summary:I

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Ljn;->궗:Landroid/preference/Preference;

    new-instance v2, Lll;

    iget-object v0, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {v2, v0}, Lll;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "subtitle_folder"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_1
    sget v3, Lnt;->subtitle_folder_choose:I

    invoke-virtual {v2, v3}, Lll;->setTitle(I)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Lll;->癤욱븳援([Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lll;->癤욱븳援(Ljava/io/File;)V

    const/4 v0, -0x1

    iget-object v1, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, p0}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x3

    iget-object v1, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    sget v3, Lnt;->do_not_use:I

    invoke-virtual {v1, v3}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, p0}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    iget-object v1, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    const/high16 v3, 0x104

    invoke-virtual {v1, v3}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1, v4}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v0

    invoke-virtual {v2, v0}, Lll;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Ljn;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v2}, Lll;->show()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
