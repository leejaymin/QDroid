.class Lcom/wolfram/android/alpha/activity/WolframAlpha$10;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;->postFeedonFacebook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V
    .locals 0
    .parameter

    .prologue
    .line 3233
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$10;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 3253
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 3237
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 3249
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 3243
    return-void
.end method
