.class public Lorg/tf/player/Synchronizer$Handle;
.super Ljava/lang/Object;
.source "Synchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/player/Synchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Handle"
.end annotation


# instance fields
.field private synchronizer:Lorg/tf/player/Synchronizer;

.field private synchronizing:Z


# direct methods
.method private constructor <init>(Lorg/tf/player/Synchronizer;)V
    .locals 0
    .parameter "synchronizer"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizer:Lorg/tf/player/Synchronizer;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lorg/tf/player/Synchronizer;Lorg/tf/player/Synchronizer$Handle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/tf/player/Synchronizer$Handle;-><init>(Lorg/tf/player/Synchronizer;)V

    return-void
.end method

.method static synthetic access$1(Lorg/tf/player/Synchronizer$Handle;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizing:Z

    return-void
.end method

.method static synthetic access$2(Lorg/tf/player/Synchronizer$Handle;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizing:Z

    return v0
.end method


# virtual methods
.method public synchronize()Z
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizer:Lorg/tf/player/Synchronizer;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizer:Lorg/tf/player/Synchronizer;

    #calls: Lorg/tf/player/Synchronizer;->synchronize(Lorg/tf/player/Synchronizer$Handle;)Z
    invoke-static {v0, p0}, Lorg/tf/player/Synchronizer;->access$1(Lorg/tf/player/Synchronizer;Lorg/tf/player/Synchronizer$Handle;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    .line 50
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizer:Lorg/tf/player/Synchronizer;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizer:Lorg/tf/player/Synchronizer;

    #calls: Lorg/tf/player/Synchronizer;->unregister(Lorg/tf/player/Synchronizer$Handle;)V
    invoke-static {v0, p0}, Lorg/tf/player/Synchronizer;->access$0(Lorg/tf/player/Synchronizer;Lorg/tf/player/Synchronizer$Handle;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/player/Synchronizer$Handle;->synchronizer:Lorg/tf/player/Synchronizer;

    .line 46
    :cond_0
    return-void
.end method
