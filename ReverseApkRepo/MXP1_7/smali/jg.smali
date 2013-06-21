.class public Ljg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic 癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;


# direct methods
.method public constructor <init>(Lcom/mxtech/videoplayer/ActivityPreferences;)V
    .locals 0

    iput-object p1, p0, Ljg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Ljg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->먯꽌(Lcom/mxtech/videoplayer/ActivityPreferences;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v0, p0, Ljg;->癤욱븳援:Lcom/mxtech/videoplayer/ActivityPreferences;

    invoke-static {v0}, Lcom/mxtech/videoplayer/ActivityPreferences;->궗(Lcom/mxtech/videoplayer/ActivityPreferences;)Landroid/content/ComponentName;

    move-result-object v3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return v1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
