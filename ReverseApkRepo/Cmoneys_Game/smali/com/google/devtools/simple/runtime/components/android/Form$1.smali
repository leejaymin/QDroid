.class Lcom/google/devtools/simple/runtime/components/android/Form$1;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Form;->addExitButtonToMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/devtools/simple/runtime/components/android/Form;


# direct methods
.method constructor <init>(Lcom/google/devtools/simple/runtime/components/android/Form;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Form$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form$1;->this$0:Lcom/google/devtools/simple/runtime/components/android/Form;

    #calls: Lcom/google/devtools/simple/runtime/components/android/Form;->showExitApplicationNotification()V
    invoke-static {v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->access$000(Lcom/google/devtools/simple/runtime/components/android/Form;)V

    .line 542
    const/4 v0, 0x1

    return v0
.end method
