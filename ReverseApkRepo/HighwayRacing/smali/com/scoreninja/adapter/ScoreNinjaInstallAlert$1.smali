.class Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$1;
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
    iput-object p1, p0, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$1;->this$0:Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 51
    const-string v2, "market://search?q=pname:com.scoreninja"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    .local v1, marketUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v0, marketIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert$1;->this$0:Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;

    #getter for: Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->parent:Landroid/app/Activity;
    invoke-static {v2}, Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;->access$0(Lcom/scoreninja/adapter/ScoreNinjaInstallAlert;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
