.class Lcom/google/devtools/simple/runtime/components/android/Notifier$2;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Notifier;->twoButtonAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Notifier;

.field final synthetic val$button1Text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Notifier;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier$2;->this$0:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier$2;->val$button1Text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier$2;->this$0:Lcom/google/devtools/simple/runtime/components/android/Notifier;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Notifier$2;->val$button1Text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Notifier;->AfterChoosing(Ljava/lang/String;)V

    .line 123
    return-void
.end method
