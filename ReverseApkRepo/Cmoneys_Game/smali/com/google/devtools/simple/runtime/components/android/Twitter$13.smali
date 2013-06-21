.class Lcom/google/devtools/simple/runtime/components/android/Twitter$13;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlertOnUI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 953
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$13;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$13;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$13;->this$0:Lcom/google/devtools/simple/runtime/components/android/Twitter;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Twitter$13;->val$msg:Ljava/lang/String;

    #calls: Lcom/google/devtools/simple/runtime/components/android/Twitter;->showAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Twitter;->access$1700(Lcom/google/devtools/simple/runtime/components/android/Twitter;Ljava/lang/String;)V

    .line 957
    return-void
.end method
