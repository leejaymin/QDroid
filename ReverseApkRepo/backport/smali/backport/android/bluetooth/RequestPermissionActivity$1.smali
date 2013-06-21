.class Lbackport/android/bluetooth/RequestPermissionActivity$1;
.super Ljava/lang/Thread;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbackport/android/bluetooth/RequestPermissionActivity;->indeterminateInternal(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface$OnDismissListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbackport/android/bluetooth/RequestPermissionActivity;

.field private final synthetic val$dialog:Landroid/app/ProgressDialog;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestPermissionActivity;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestPermissionActivity$1;->this$0:Lbackport/android/bluetooth/RequestPermissionActivity;

    iput-object p2, p0, Lbackport/android/bluetooth/RequestPermissionActivity$1;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lbackport/android/bluetooth/RequestPermissionActivity$1;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lbackport/android/bluetooth/RequestPermissionActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    .line 88
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lbackport/android/bluetooth/RequestPermissionActivity$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    iget-object v0, p0, Lbackport/android/bluetooth/RequestPermissionActivity$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lbackport/android/bluetooth/RequestPermissionActivity$1$1;

    iget-object v2, p0, Lbackport/android/bluetooth/RequestPermissionActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {v1, p0, v2}, Lbackport/android/bluetooth/RequestPermissionActivity$1$1;-><init>(Lbackport/android/bluetooth/RequestPermissionActivity$1;Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method
