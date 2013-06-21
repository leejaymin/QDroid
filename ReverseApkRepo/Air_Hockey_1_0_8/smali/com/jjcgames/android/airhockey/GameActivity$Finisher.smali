.class Lcom/jjcgames/android/airhockey/GameActivity$Finisher;
.super Ljava/lang/Object;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjcgames/android/airhockey/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Finisher"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/jjcgames/android/airhockey/GameActivity;


# direct methods
.method constructor <init>(Lcom/jjcgames/android/airhockey/GameActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->this$0:Lcom/jjcgames/android/airhockey/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/GameActivity$Finisher;)Lcom/jjcgames/android/airhockey/GameActivity;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->this$0:Lcom/jjcgames/android/airhockey/GameActivity;

    return-object v0
.end method


# virtual methods
.method finish(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/GameActivity$Finisher;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;

    invoke-direct {v1, p0, p1}, Lcom/jjcgames/android/airhockey/GameActivity$Finisher$1;-><init>(Lcom/jjcgames/android/airhockey/GameActivity$Finisher;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method
