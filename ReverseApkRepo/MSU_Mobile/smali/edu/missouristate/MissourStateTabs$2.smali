.class Ledu/missouristate/MissourStateTabs$2;
.super Landroid/webkit/WebChromeClient;
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


# direct methods
.method constructor <init>(Ledu/missouristate/MissourStateTabs;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/missouristate/MissourStateTabs$2;->this$0:Ledu/missouristate/MissourStateTabs;

    iput-object p2, p0, Ledu/missouristate/MissourStateTabs$2;->val$builder:Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 102
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs$2;->val$builder:Landroid/app/AlertDialog$Builder;

    .line 103
    const-string v1, "Msu Mobile"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    const-string v1, "OK"

    .line 106
    new-instance v2, Ledu/missouristate/MissourStateTabs$2$1;

    invoke-direct {v2, p0, p4}, Ledu/missouristate/MissourStateTabs$2$1;-><init>(Ledu/missouristate/MissourStateTabs$2;Landroid/webkit/JsResult;)V

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 117
    const/4 v0, 0x1

    return v0
.end method
