.class Lcom/jjcgames/android/airhockey/GameActivity$3;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jjcgames/android/airhockey/GameActivity;->userPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jjcgames/android/airhockey/GameActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/GameActivity$3;->this$0:Lcom/jjcgames/android/airhockey/GameActivity;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$3;->this$0:Lcom/jjcgames/android/airhockey/GameActivity;

    #getter for: Lcom/jjcgames/android/airhockey/GameActivity;->gameView:Lcom/jjcgames/android/airhockey/GameView;
    invoke-static {v0}, Lcom/jjcgames/android/airhockey/GameActivity;->access$0(Lcom/jjcgames/android/airhockey/GameActivity;)Lcom/jjcgames/android/airhockey/GameView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jjcgames/android/airhockey/GameView;->userResume()V

    .line 90
    return-void
.end method