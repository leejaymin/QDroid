.class public Ljl;
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

    iput-object p1, p0, Ljl;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljl;)V
    .locals 0

    invoke-direct {p0, p1}, Ljl;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

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
    iget-object v1, p0, Ljl;->궗:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "typeface_dir"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lcom/mxtech/app/AppUtils;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    iget-object v1, p0, Ljl;->궗:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ljl;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-virtual {v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Ljl;->궗:Landroid/preference/Preference;

    new-instance v1, Lll;

    iget-object v2, p0, Ljl;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {v1, v2}, Lll;-><init>(Landroid/content/Context;)V

    sget v2, Lnt;->font_browse_title:I

    invoke-virtual {v1, v2}, Lll;->setTitle(I)V

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lll;->癤욱븳援([Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lll;->癤욱븳援(Ljava/lang/String;)V

    const/4 v0, -0x1

    iget-object v2, p0, Ljl;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    iget-object v2, p0, Ljl;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Lcom/mxtech/videoplayer/ActivityPreferences;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lll;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Ljl;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lll;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Ljl;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v0

    invoke-virtual {v0, v1}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v1}, Lll;->show()V

    const/4 v0, 0x1

    goto :goto_0
.end method
