.class final Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;
.super Ljava/lang/Object;
.source "GoogleLoginServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->postActivityResult(Landroid/os/Handler;Landroid/app/Activity;IILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;IILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$resultCode:I

    iput p3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$requestCode:I

    iput-object p4, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$resultCode:I

    iget v2, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$requestCode:I

    iget-object v3, p0, Lcom/google/android/googlelogin/GoogleLoginServiceHelper$4;->val$bundle:Landroid/os/Bundle;

    #calls: Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->sendActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->access$100(Landroid/app/Activity;IILandroid/os/Bundle;)V

    .line 451
    return-void
.end method
