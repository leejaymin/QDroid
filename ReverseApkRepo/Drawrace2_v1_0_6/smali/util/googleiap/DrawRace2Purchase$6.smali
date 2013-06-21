.class final Lutil/googleiap/DrawRace2Purchase$6;
.super Ljava/lang/Object;
.source "DrawRace2Purchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/googleiap/DrawRace2Purchase;->doInitializeOwnedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ownedItems:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lutil/googleiap/DrawRace2Purchase$6;->val$ownedItems:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lutil/googleiap/DrawRace2Purchase;->smOwnedItems:Ljava/util/Set;

    iget-object v1, p0, Lutil/googleiap/DrawRace2Purchase$6;->val$ownedItems:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 339
    return-void
.end method
