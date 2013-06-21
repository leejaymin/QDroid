.class public Lstericson/busybox/donate/services/PreferenceService;
.super Ljava/lang/Object;
.source "PreferenceService.java"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 13
    iput-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->editor:Landroid/content/SharedPreferences$Editor;

    .line 17
    sget-object v0, Lstericson/busybox/donate/Constants;->PREF_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 18
    return-void
.end method

.method private getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->editor:Landroid/content/SharedPreferences$Editor;

    .line 48
    :cond_0
    iget-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method


# virtual methods
.method public commit()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lstericson/busybox/donate/services/PreferenceService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public getDeleteDatabase()Z
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lstericson/busybox/donate/services/PreferenceService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "deleteDatabase"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setDeleteDatabase(Z)V
    .locals 2
    .parameter "delete"

    .prologue
    .line 36
    invoke-direct {p0}, Lstericson/busybox/donate/services/PreferenceService;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deleteDatabase"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 37
    return-void
.end method
