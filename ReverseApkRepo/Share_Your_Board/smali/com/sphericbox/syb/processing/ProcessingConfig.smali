.class public Lcom/sphericbox/syb/processing/ProcessingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final av:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Lcom/sphericbox/syb/f;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method


# virtual methods
.method public isAutoContrastEnabled()Z
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    const-string v1, "AUTO_CONTRAST_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEdgesGeometryEnabled()Z
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    const-string v1, "DETECT_EDGES_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnhaceEnabled()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    const-string v1, "ENHANCE_ENABLED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutoContrastEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 36
    const-string v1, "AUTO_CONTRAST_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public setEdgesGeometryEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 42
    const-string v1, "DETECT_EDGES_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    return-void
.end method

.method public setEnhaceEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54
    const-string v1, "ENHANCE_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 55
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 56
    return-void
.end method

.method public setFixGeometryEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sphericbox/syb/processing/ProcessingConfig;->av:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    const-string v1, "FIX_GEOMETRY_ENABLED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method
