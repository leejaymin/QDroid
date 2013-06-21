.class Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$1;
.super Ljava/lang/Object;
.source "ReplCommController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->ShowAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

.field final synthetic val$notice:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$1;->val$notice:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;

    #getter for: Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->form:Lcom/google/devtools/simple/runtime/components/android/Form;
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;->access$000(Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController;)Lcom/google/devtools/simple/runtime/components/android/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/util/ReplCommController$1;->val$notice:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 110
    return-void
.end method
