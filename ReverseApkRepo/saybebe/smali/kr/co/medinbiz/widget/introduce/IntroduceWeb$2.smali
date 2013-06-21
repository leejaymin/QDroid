.class Lkr/co/medinbiz/widget/introduce/IntroduceWeb$2;
.super Ljava/lang/Object;
.source "IntroduceWeb.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/introduce/IntroduceWeb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/introduce/IntroduceWeb;

.field private final synthetic val$webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/introduce/IntroduceWeb;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$2;->this$0:Lkr/co/medinbiz/widget/introduce/IntroduceWeb;

    iput-object p2, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$2;->val$webview:Landroid/webkit/WebView;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 67
    iget-object v0, p0, Lkr/co/medinbiz/widget/introduce/IntroduceWeb$2;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 68
    return-void
.end method
