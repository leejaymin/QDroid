.class Lcom/wolfram/android/alpha/activity/FeedbackActivity$1;
.super Ljava/lang/Object;
.source "FeedbackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wolfram/android/alpha/activity/FeedbackActivity;->doDialog(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/FeedbackActivity;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/wolfram/android/alpha/activity/FeedbackActivity;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/FeedbackActivity$1;->this$0:Lcom/wolfram/android/alpha/activity/FeedbackActivity;

    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/FeedbackActivity$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FeedbackActivity$1;->val$e:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/FeedbackActivity$1;->this$0:Lcom/wolfram/android/alpha/activity/FeedbackActivity;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/activity/FeedbackActivity;->finish()V

    .line 138
    :cond_0
    return-void
.end method
