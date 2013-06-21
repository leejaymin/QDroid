.class Lbackport/android/bluetooth/RequestEnableActivity$3$1;
.super Ljava/lang/Object;
.source "RequestEnableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbackport/android/bluetooth/RequestEnableActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbackport/android/bluetooth/RequestEnableActivity$3;


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestEnableActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestEnableActivity$3$1;->this$1:Lbackport/android/bluetooth/RequestEnableActivity$3;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity$3$1;->this$1:Lbackport/android/bluetooth/RequestEnableActivity$3;

    #getter for: Lbackport/android/bluetooth/RequestEnableActivity$3;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;
    invoke-static {v0}, Lbackport/android/bluetooth/RequestEnableActivity$3;->access$0(Lbackport/android/bluetooth/RequestEnableActivity$3;)Lbackport/android/bluetooth/RequestEnableActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lbackport/android/bluetooth/RequestEnableActivity;->setResult(I)V

    .line 89
    iget-object v0, p0, Lbackport/android/bluetooth/RequestEnableActivity$3$1;->this$1:Lbackport/android/bluetooth/RequestEnableActivity$3;

    #getter for: Lbackport/android/bluetooth/RequestEnableActivity$3;->this$0:Lbackport/android/bluetooth/RequestEnableActivity;
    invoke-static {v0}, Lbackport/android/bluetooth/RequestEnableActivity$3;->access$0(Lbackport/android/bluetooth/RequestEnableActivity$3;)Lbackport/android/bluetooth/RequestEnableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbackport/android/bluetooth/RequestEnableActivity;->finish()V

    .line 90
    return-void
.end method
