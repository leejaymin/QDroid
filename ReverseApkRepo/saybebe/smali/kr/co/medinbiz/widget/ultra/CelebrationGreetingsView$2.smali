.class Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$2;
.super Ljava/lang/Object;
.source "CelebrationGreetingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$2;->this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView$2;->this$0:Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;

    #getter for: Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->webview:Landroid/webkit/WebView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;->access$1(Lkr/co/medinbiz/widget/ultra/CelebrationGreetingsView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 97
    return-void
.end method
