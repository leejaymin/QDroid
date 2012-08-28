.class Lcom/adfonic/android/view/BaseAdfonicView$3;
.super Landroid/webkit/WebViewClient;
.source "BaseAdfonicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/view/BaseAdfonicView;->setWebViewClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/view/BaseAdfonicView;


# direct methods
.method constructor <init>(Lcom/adfonic/android/view/BaseAdfonicView;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView$3;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$3;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    #calls: Lcom/adfonic/android/view/BaseAdfonicView;->startAdClickThread(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/adfonic/android/view/BaseAdfonicView;->access$700(Lcom/adfonic/android/view/BaseAdfonicView;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x1

    return v0
.end method
