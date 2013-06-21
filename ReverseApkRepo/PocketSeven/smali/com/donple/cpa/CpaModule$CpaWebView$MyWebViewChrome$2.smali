.class Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$2;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;

.field private final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$2;->this$2:Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome;

    iput-object p2, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$2;->val$result:Landroid/webkit/JsResult;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/donple/cpa/CpaModule$CpaWebView$MyWebViewChrome$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 1020
    return-void
.end method
