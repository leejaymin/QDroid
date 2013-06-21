.class public Lcom/stickycoding/rokon/GameThread$KeyTrigger;
.super Ljava/lang/Object;
.source "GameThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/GameThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyTrigger"
.end annotation


# instance fields
.field protected isDown:Z

.field protected isNull:Z

.field protected keyCode:I

.field final synthetic this$0:Lcom/stickycoding/rokon/GameThread;


# direct methods
.method protected constructor <init>(Lcom/stickycoding/rokon/GameThread;)V
    .locals 1
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->this$0:Lcom/stickycoding/rokon/GameThread;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->isNull:Z

    return-void
.end method


# virtual methods
.method protected reset()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->isNull:Z

    .line 99
    return-void
.end method

.method protected set(IZ)V
    .locals 1
    .parameter "keyCode"
    .parameter "isDown"

    .prologue
    .line 92
    iput p1, p0, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->keyCode:I

    .line 93
    iput-boolean p2, p0, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->isDown:Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stickycoding/rokon/GameThread$KeyTrigger;->isNull:Z

    .line 95
    return-void
.end method
