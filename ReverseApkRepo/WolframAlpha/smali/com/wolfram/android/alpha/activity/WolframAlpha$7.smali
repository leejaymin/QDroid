.class Lcom/wolfram/android/alpha/activity/WolframAlpha$7;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;)V
    .locals 0
    .parameter

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$7;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1934
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1935
    return-void
.end method