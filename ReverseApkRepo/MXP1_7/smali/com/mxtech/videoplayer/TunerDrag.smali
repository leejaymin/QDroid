.class public Lcom/mxtech/videoplayer/TunerDrag;
.super Landroid/preference/DialogPreference;

# interfaces
.implements Lri;


# instance fields
.field private final 癤욱븳援:Lfm;

.field private 궗:Loj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/TunerDrag;->癤욱븳援:Lfm;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    iput-object v0, p0, Lcom/mxtech/videoplayer/TunerDrag;->癤욱븳援:Lfm;

    return-void
.end method


# virtual methods
.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerDrag;->癤욱븳援:Lfm;

    invoke-virtual {v0}, Lfm;->癤욱븳援()V

    invoke-super {p0}, Landroid/preference/DialogPreference;->onActivityDestroy()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerDrag;->궗:Loj;

    iget-boolean v0, v0, Loj;->癤욱븳援:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mxtech/videoplayer/L;->癤욱븳援:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/videoplayer/TunerDrag;->궗:Loj;

    invoke-virtual {v1, v0}, Loj;->癤욱븳援(Landroid/content/SharedPreferences$Editor;)V

    iget-object v1, p0, Lcom/mxtech/videoplayer/TunerDrag;->궗:Loj;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Loj;->癤욱븳援:Z

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v0, Loj;

    move-object v3, v1

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Loj;-><init>(Log;Landroid/view/ViewGroup;Loi;Loh;Lri;)V

    iput-object v0, p0, Lcom/mxtech/videoplayer/TunerDrag;->궗:Loj;

    return-object v2
.end method

.method public 덉쓣()Lfm;
    .locals 1

    iget-object v0, p0, Lcom/mxtech/videoplayer/TunerDrag;->癤욱븳援:Lfm;

    return-object v0
.end method

.method public 留먰븷()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
