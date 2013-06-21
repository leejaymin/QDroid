.class public Lcom/nix/apps/androlib/wallpapers/modPreferences;
.super Ljava/lang/Object;
.source "modPreferences.java"


# static fields
.field public static prefLanguage:Ljava/lang/Integer;

.field public static prefLastVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/nix/apps/androlib/wallpapers/modPreferences;->prefLanguage:Ljava/lang/Integer;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadPreferences()V
    .locals 3

    .prologue
    .line 14
    sget-object v1, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 15
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "LastVersion"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nix/apps/androlib/wallpapers/modPreferences;->prefLastVersion:Ljava/lang/String;

    .line 16
    const-string v1, "Language"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/nix/apps/androlib/wallpapers/modPreferences;->prefLanguage:Ljava/lang/Integer;

    .line 17
    return-void
.end method

.method public static savePreferences()V
    .locals 4

    .prologue
    .line 21
    sget-object v2, Lcom/nix/apps/androlib/wallpapers/modCommon;->mContextGlobal:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 22
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Language"

    sget-object v3, Lcom/nix/apps/androlib/wallpapers/modPreferences;->prefLanguage:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method
