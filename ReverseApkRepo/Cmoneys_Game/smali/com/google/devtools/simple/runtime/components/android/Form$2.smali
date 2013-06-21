.class Lcom/google/devtools/simple/runtime/components/android/Form$2;
.super Ljava/lang/Object;
.source "Form.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/devtools/simple/runtime/components/android/Form;->showExitApplicationNotification()V
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
    .line 556
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Form$2;->this$0:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form$2;->this$0:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 564
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 565
    return-void
.end method
