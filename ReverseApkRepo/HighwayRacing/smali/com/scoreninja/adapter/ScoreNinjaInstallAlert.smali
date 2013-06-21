.class final Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;
.super Landroid/app/AlertDialog$Builder;
.source "ScoreNinjaInstallAlert.java"


# static fields
.field private static final LATER:Ljava/lang/String; = "Maybe Later"

.field private static final MARKET_URI:Ljava/lang/String; = "market://search?q=pname:com.scoreninja"

.field private static final NEVER:Ljava/lang/String; = "Never Install"

.field private static final NOW:Ljava/lang/String; = "Install Now"

.field private static final NO_SCORE_NINJA:Ljava/lang/String; = "Install Android ScoreNinja."


# instance fields
.field private final parent:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->parent:Landroid/app/Activity;

    .line 47
    const-string v3, "Install Android ScoreNinja."

    invoke-virtual {p0, v3}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    new-instance v0, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$1;

    invoke-direct {v0, p0}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$1;-><init>(Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;)V

    .line 57
    .local v0, installListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$2;

    invoke-direct {v1, p0}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$2;-><init>(Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;)V

    .line 62
    .local v1, laterListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$3;

    invoke-direct {v2, p0}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$3;-><init>(Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;)V

    .line 71
    .local v2, neverListener:Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "Install Now"

    invoke-virtual {p0, v3, v0}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    const-string v3, "Maybe Later"

    invoke-virtual {p0, v3, v1}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    const-string v3, "Never Install"

    invoke-virtual {p0, v3, v2}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->parent:Landroid/app/Activity;

    return-object v0
.end method
