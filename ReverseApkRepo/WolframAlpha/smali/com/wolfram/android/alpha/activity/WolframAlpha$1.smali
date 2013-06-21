.class Lcom/wolfram/android/alpha/activity/WolframAlpha$1;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

.field final synthetic val$smoothScrollMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Ljava/lang/reflect/Method;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$1;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$1;->val$smoothScrollMethod:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$1;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    const v2, 0x7f0e0065

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 241
    .local v0, resultsView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 243
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 244
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$1;->val$smoothScrollMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, LjQaa7YP/X8ZGZLi5l5;->EhwFYCDu5qmH(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v1

    goto :goto_0
.end method
