.class Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$3;
.super Ljava/lang/Object;
.source "ScoreNinjaInstallAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;


# direct methods
.method constructor <init>(Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$3;->this$0:Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    iget-object v2, p0, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$3;->this$0:Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;

    #getter for: Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->parent:Landroid/app/Activity;
    invoke-static {v2}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->access$0(Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "ScoreNinjaPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "neverask"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method
