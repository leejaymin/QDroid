.class public Ljm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lfe;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;


# direct methods
.method private constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V
    .locals 0

    iput-object p1, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;Ljm;)V
    .locals 0

    invoke-direct {p0, p1}, Ljm;-><init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->궗(Lcom/mxtech/videoplayer/ActivityPreferences;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌(Lcom/mxtech/videoplayer/ActivityPreferences;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->궗(Lcom/mxtech/videoplayer/ActivityPreferences;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_0
    invoke-static {p0}, Lfd;->癤욱븳援(Lfe;)V

    iget-object v0, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    sget v1, Lnt;->reset_settings_complete:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lnt;->reset_settings:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lnt;->reset_settings_confirm:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v1}, Lcom/mxtech/videoplayer/ActivityPreferences;->癤욱븳援(Lcom/mxtech/videoplayer/ActivityPreferences;)Lfm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfm;->癤욱븳援(Landroid/content/DialogInterface;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public 癤욱븳援(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public 癤욱븳援(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public 궗(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lfd;->궗()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljm;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-virtual {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mxtech/app/AppUtils;->먯꽌(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
