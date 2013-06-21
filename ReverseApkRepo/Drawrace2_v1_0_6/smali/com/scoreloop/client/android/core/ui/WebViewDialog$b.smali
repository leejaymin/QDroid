.class final Lcom/scoreloop/client/android/core/ui/WebViewDialog$b;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/ui/WebViewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/ui/WebViewDialog;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/ui/WebViewDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$b;->a:Lcom/scoreloop/client/android/core/ui/WebViewDialog;

    .line 60
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 66
    iget-object v0, p0, Lcom/scoreloop/client/android/core/ui/WebViewDialog$b;->a:Lcom/scoreloop/client/android/core/ui/WebViewDialog;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/ui/WebViewDialog;->a()V

    .line 67
    return-void
.end method
