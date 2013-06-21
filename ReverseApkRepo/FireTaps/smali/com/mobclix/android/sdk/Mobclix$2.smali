.class Lcom/mobclix/android/sdk/Mobclix$2;
.super Landroid/os/Handler;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/Mobclix;->initialize(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 453
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #calls: Lcom/mobclix/android/sdk/Mobclix;->updateLocation()V
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$66(Lcom/mobclix/android/sdk/Mobclix;)V

    .line 457
    return-void
.end method
