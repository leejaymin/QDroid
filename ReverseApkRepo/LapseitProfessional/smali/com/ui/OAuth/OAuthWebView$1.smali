.class Lcom/ui/OAuth/OAuthWebView$1;
.super Ljava/lang/Object;
.source "OAuthWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/OAuth/OAuthWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 75
    #calls: Lcom/ui/OAuth/OAuthWebView;->dismiss()V
    invoke-static {}, Lcom/ui/OAuth/OAuthWebView;->access$0()V

    .line 76
    return-void
.end method
