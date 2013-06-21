.class Lcom/wolfram/android/alpha/view/QueryInputView$1;
.super Ljava/lang/Object;
.source "QueryInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/view/QueryInputView;->setWAActivity(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/view/QueryInputView;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/view/QueryInputView;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wolfram/android/alpha/view/QueryInputView$1;->this$0:Lcom/wolfram/android/alpha/view/QueryInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 88
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setPerformingQuery(Z)V

    .line 89
    iget-object v0, p0, Lcom/wolfram/android/alpha/view/QueryInputView$1;->this$0:Lcom/wolfram/android/alpha/view/QueryInputView;

    iget-object v1, p0, Lcom/wolfram/android/alpha/view/QueryInputView$1;->this$0:Lcom/wolfram/android/alpha/view/QueryInputView;

    #getter for: Lcom/wolfram/android/alpha/view/QueryInputView;->current_query_text:Ljava/lang/String;
    invoke-static {v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->access$000(Lcom/wolfram/android/alpha/view/QueryInputView;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/wolfram/android/alpha/view/QueryInputView;->InstantMath(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/view/QueryInputView;->access$100(Lcom/wolfram/android/alpha/view/QueryInputView;Ljava/lang/String;)V

    .line 90
    return-void
.end method
