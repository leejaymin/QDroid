.class Lcom/wolfram/android/alpha/activity/WolframAlpha$5;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;->resultsFooterClickHandler(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

.field final synthetic val$footerButton:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$5;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$5;->val$footerButton:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1895
    iget-object p0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$5;->val$footerButton:Landroid/view/View;

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1898
    return-void
.end method
