.class Lorg/tf/GameActivity$LocalHandler;
.super Landroid/os/Handler;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/GameActivity;


# direct methods
.method private constructor <init>(Lorg/tf/GameActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 678
    iput-object p1, p0, Lorg/tf/GameActivity$LocalHandler;->this$0:Lorg/tf/GameActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tf/GameActivity;Lorg/tf/GameActivity$LocalHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 678
    invoke-direct {p0, p1}, Lorg/tf/GameActivity$LocalHandler;-><init>(Lorg/tf/GameActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 680
    iget-object v0, p0, Lorg/tf/GameActivity$LocalHandler;->this$0:Lorg/tf/GameActivity;

    #calls: Lorg/tf/GameActivity;->handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lorg/tf/GameActivity;->access$13(Lorg/tf/GameActivity;Landroid/os/Message;)V

    .line 681
    return-void
.end method
