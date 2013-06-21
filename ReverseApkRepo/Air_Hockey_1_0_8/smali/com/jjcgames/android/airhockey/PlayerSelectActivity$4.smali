.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$4;
.super Ljava/lang/Object;
.source "PlayerSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/PlayerSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$4;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$4;->this$0:Lcom/jjcgames/android/airhockey/PlayerSelectActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->showDialog(I)V

    .line 267
    return-void
.end method
