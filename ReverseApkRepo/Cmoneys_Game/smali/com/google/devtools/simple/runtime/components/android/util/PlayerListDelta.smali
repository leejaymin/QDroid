.class public Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;
.super Ljava/lang/Object;
.source "PlayerListDelta.java"


# static fields
.field public static NO_CHANGE:Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;


# instance fields
.field private playersAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playersRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;-><init>(Ljava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->NO_CHANGE:Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, playersRemoved:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, playersAdded:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->playersRemoved:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->playersAdded:Ljava/util/List;

    .line 32
    return-void
.end method


# virtual methods
.method public getPlayersAdded()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->playersAdded:Ljava/util/List;

    return-object v0
.end method

.method public getPlayersRemoved()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/util/PlayerListDelta;->playersRemoved:Ljava/util/List;

    return-object v0
.end method
