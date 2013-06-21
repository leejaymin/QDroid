.class Lcom/wolfram/android/alpha/activity/WolframAlpha$3;
.super Ljava/lang/Object;
.source "WolframAlpha.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;->doQuery(Lcom/wolfram/alpha/WAQuery;Lcom/wolfram/android/alpha/PodStateButtonData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

.field final synthetic val$query:Lcom/wolfram/alpha/WAQuery;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/wolfram/alpha/WAQuery;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$3;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$3;->val$query:Lcom/wolfram/alpha/WAQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1578
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1579
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$3;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$700(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setDate_location_notification_shown(Ljava/util/Date;)V

    .line 1580
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$3;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$3;->val$query:Lcom/wolfram/alpha/WAQuery;

    #calls: Lcom/wolfram/android/alpha/activity/WolframAlpha;->executeQuery(Lcom/wolfram/alpha/WAQuery;)V
    invoke-static {v0, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$1400(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/wolfram/alpha/WAQuery;)V

    .line 1581
    return-void
.end method
