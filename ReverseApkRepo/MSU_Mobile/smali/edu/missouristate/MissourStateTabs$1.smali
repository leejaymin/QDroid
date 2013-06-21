.class Ledu/missouristate/MissourStateTabs$1;
.super Landroid/webkit/WebViewClient;
.source "MissourStateTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/missouristate/MissourStateTabs;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/missouristate/MissourStateTabs;

.field private final synthetic val$builder:Landroid/app/AlertDialog$Builder;

.field private final synthetic val$currentActivity:Landroid/app/TabActivity;


# direct methods
.method constructor <init>(Ledu/missouristate/MissourStateTabs;Landroid/app/AlertDialog$Builder;Landroid/app/TabActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/missouristate/MissourStateTabs$1;->this$0:Ledu/missouristate/MissourStateTabs;

    iput-object p2, p0, Ledu/missouristate/MissourStateTabs$1;->val$builder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Ledu/missouristate/MissourStateTabs$1;->val$currentActivity:Landroid/app/TabActivity;

    .line 61
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "url"

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, Url:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "http://gomaroon.missouristate.edu/downloads/wallpaper/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Ledu/missouristate/MissourStateTabs$1;->val$builder:Landroid/app/AlertDialog$Builder;

    const-string v3, "Would you like to save this image as your wallpaper?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 68
    const-string v3, "Yes"

    new-instance v4, Ledu/missouristate/MissourStateTabs$1$1;

    iget-object v5, p0, Ledu/missouristate/MissourStateTabs$1;->val$currentActivity:Landroid/app/TabActivity;

    invoke-direct {v4, p0, p1, v5}, Ledu/missouristate/MissourStateTabs$1$1;-><init>(Ledu/missouristate/MissourStateTabs$1;Landroid/webkit/WebView;Landroid/app/TabActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 88
    const-string v3, "No"

    new-instance v4, Ledu/missouristate/MissourStateTabs$1$2;

    invoke-direct {v4, p0}, Ledu/missouristate/MissourStateTabs$1$2;-><init>(Ledu/missouristate/MissourStateTabs$1;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 93
    iget-object v2, p0, Ledu/missouristate/MissourStateTabs$1;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 94
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 96
    .end local v1           #alert:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
