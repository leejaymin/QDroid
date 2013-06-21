.class Lstericson/busybox/donate/jobs/AsyncJob$1;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/jobs/AsyncJob;->onPreExecute()V
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
    iput-object p1, p0, Lstericson/busybox/donate/jobs/AsyncJob$1;->this$0:Lstericson/busybox/donate/jobs/AsyncJob;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lstericson/busybox/donate/jobs/AsyncJob$1;->this$0:Lstericson/busybox/donate/jobs/AsyncJob;

    iget-object v0, v0, Lstericson/busybox/donate/jobs/AsyncJob;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lstericson/busybox/donate/jobs/AsyncJob$1;->this$0:Lstericson/busybox/donate/jobs/AsyncJob;

    iget-object v1, v1, Lstericson/busybox/donate/jobs/AsyncJob;->context:Landroid/app/Activity;

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/16 v4, 0xfa

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method
