.class Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;
.super Ljava/lang/Object;
.source "RequestDiscoverableActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lbackport/android/bluetooth/RequestDiscoverableActivity$3;

.field private final synthetic val$duration:I


# direct methods
.method constructor <init>(Lbackport/android/bluetooth/RequestDiscoverableActivity$3;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;->this$1:Lbackport/android/bluetooth/RequestDiscoverableActivity$3;

    iput p2, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;->val$duration:I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;->this$1:Lbackport/android/bluetooth/RequestDiscoverableActivity$3;

    #getter for: Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;
    invoke-static {v0}, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->access$0(Lbackport/android/bluetooth/RequestDiscoverableActivity$3;)Lbackport/android/bluetooth/RequestDiscoverableActivity;

    move-result-object v0

    iget v1, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;->val$duration:I

    invoke-virtual {v0, v1}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->setResult(I)V

    .line 112
    iget-object v0, p0, Lbackport/android/bluetooth/RequestDiscoverableActivity$3$1;->this$1:Lbackport/android/bluetooth/RequestDiscoverableActivity$3;

    #getter for: Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->this$0:Lbackport/android/bluetooth/RequestDiscoverableActivity;
    invoke-static {v0}, Lbackport/android/bluetooth/RequestDiscoverableActivity$3;->access$0(Lbackport/android/bluetooth/RequestDiscoverableActivity$3;)Lbackport/android/bluetooth/RequestDiscoverableActivity;

    move-result-object v0

    invoke-virtual {v0}, Lbackport/android/bluetooth/RequestDiscoverableActivity;->finish()V

    .line 113
    return-void
.end method
