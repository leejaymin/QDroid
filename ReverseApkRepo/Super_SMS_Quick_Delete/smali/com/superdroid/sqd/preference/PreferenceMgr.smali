.class public Lcom/superdroid/sqd/preference/PreferenceMgr;
.super Ljava/lang/Object;
.source "PreferenceMgr.java"


# static fields
.field private static final SSF_PREF:Ljava/lang/String; = "SQD"

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private _context:Landroid/content/Context;

.field _pref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/superdroid/sqd/preference/PreferenceMgr;->_context:Landroid/content/Context;

    .line 9
    iput-object v0, p0, Lcom/superdroid/sqd/preference/PreferenceMgr;->_pref:Landroid/content/SharedPreferences;

    .line 14
    iput-object p1, p0, Lcom/superdroid/sqd/preference/PreferenceMgr;->_context:Landroid/content/Context;

    .line 15
    iget-object v0, p0, Lcom/superdroid/sqd/preference/PreferenceMgr;->_context:Landroid/content/Context;

    const-string v1, "SQD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/superdroid/sqd/preference/PreferenceMgr;->_pref:Landroid/content/SharedPreferences;

    .line 16
    return-void
.end method


# virtual methods
.method public getLastVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/superdroid/sqd/preference/PreferenceMgr;->_pref:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 23
    iget-object v1, p0, Lcom/superdroid/sqd/preference/PreferenceMgr;->_pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method
