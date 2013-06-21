.class public Lfu;
.super Ljava/lang/Object;


# static fields
.field private static 癤욱븳援:Lft;


# direct methods
.method public static 癤욱븳援(Landroid/content/Context;)Lft;
    .locals 1

    sget-object v0, Lfu;->癤욱븳援:Lft;

    if-nez v0, :cond_0

    new-instance v0, Lfs;

    invoke-direct {v0}, Lfs;-><init>()V

    sput-object v0, Lfu;->癤욱븳援:Lft;

    :cond_0
    sget-object v0, Lfu;->癤욱븳援:Lft;

    return-object v0
.end method
