.class public Lcom/b2bstudio/digger/top;
.super Ljava/lang/Object;
.source "top.java"


# static fields
.field public static high:J

.field public static highScore:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/b2bstudio/digger/top;->high:J

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadHigh()V
    .locals 4

    .prologue
    .line 16
    sget-object v0, Lcom/b2bstudio/digger/top;->highScore:Landroid/content/SharedPreferences;

    const-string v1, "highscoredigger"

    sget-wide v2, Lcom/b2bstudio/digger/top;->high:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/b2bstudio/digger/top;->high:J

    .line 17
    return-void
.end method

.method public static saveHigh(J)V
    .locals 2
    .parameter "h"

    .prologue
    .line 10
    sget-object v1, Lcom/b2bstudio/digger/top;->highScore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 11
    .local v0, i:Landroid/content/SharedPreferences$Editor;
    const-string v1, "highscoredigger"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 13
    return-void
.end method
