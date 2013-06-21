.class Ledu/missouristate/MissourStateTabs$2$1;
.super Ljava/lang/Object;
.source "MissourStateTabs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/missouristate/MissourStateTabs$2;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ledu/missouristate/MissourStateTabs$2;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Ledu/missouristate/MissourStateTabs$2;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ledu/missouristate/MissourStateTabs$2$1;->this$1:Ledu/missouristate/MissourStateTabs$2;

    iput-object p2, p0, Ledu/missouristate/MissourStateTabs$2$1;->val$result:Landroid/webkit/JsResult;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 110
    iget-object v0, p0, Ledu/missouristate/MissourStateTabs$2$1;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 111
    return-void
.end method
