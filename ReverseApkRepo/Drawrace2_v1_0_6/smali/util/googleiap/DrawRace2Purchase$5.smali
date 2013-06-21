.class final Lutil/googleiap/DrawRace2Purchase$5;
.super Ljava/lang/Object;
.source "DrawRace2Purchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutil/googleiap/DrawRace2Purchase;->initializeOwnedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 305
    #calls: Lutil/googleiap/DrawRace2Purchase;->doInitializeOwnedItems()V
    invoke-static {}, Lutil/googleiap/DrawRace2Purchase;->access$900()V

    .line 306
    return-void
.end method
