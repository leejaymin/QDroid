.class public abstract Lcom/mxtech/videoplayer/ActivityThemed;
.super Lcom/mxtech/app/ActivityBase;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private ㅼ꽑嫄:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/app/ActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Lcom/mxtech/app/ActivityBase;->onDestroy()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "list_theme"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "white"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/ActivityThemed;->ㅼ꽑嫄:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityThemed;->궗()V

    :cond_0
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/mxtech/app/ActivityBase;->onTitleChanged(Ljava/lang/CharSequence;I)V

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityThemed;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected abstract 癤욱븳援(Ljava/lang/String;)I
.end method

.method public 癤욱븳援(Landroid/os/Bundle;I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    const-string v1, "list_theme"

    const-string v2, "white"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mxtech/videoplayer/ActivityThemed;->ㅼ꽑嫄:Ljava/lang/String;

    iget-object v0, p0, Lcom/mxtech/videoplayer/ActivityThemed;->ㅼ꽑嫄:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityThemed;->癤욱븳援(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityThemed;->setTheme(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lnk;->customTitle:I

    aput v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/mxtech/videoplayer/ActivityThemed;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/mxtech/videoplayer/ActivityThemed;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/mxtech/app/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/mxtech/videoplayer/ActivityThemed;->setContentView(I)V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/mxtech/videoplayer/ActivityThemed;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/view/Window;->setFeatureInt(II)V

    :cond_1
    return-void
.end method
