.class Lstericson/busybox/donate/jobs/AsyncJob$2;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/jobs/AsyncJob;->onPostExecute(Lstericson/busybox/donate/domain/JobResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/jobs/AsyncJob;


# direct methods
.method constructor <init>(Lstericson/busybox/donate/jobs/AsyncJob;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/jobs/AsyncJob$2;->this$0:Lstericson/busybox/donate/jobs/AsyncJob;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AsyncJob$2;->this$0:Lstericson/busybox/donate/jobs/AsyncJob;

    iget-object v0, v0, Lstericson/busybox/donate/jobs/AsyncJob;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method
