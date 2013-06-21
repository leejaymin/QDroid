.class public Lcom/nix/apps/androlib/wallpapers/utils/MultiFilter;
.super Ljava/lang/Object;
.source "MultiFilter.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field extFinder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4
    .parameter "extensions"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nix/apps/androlib/wallpapers/utils/MultiFilter;->extFinder:Ljava/util/HashMap;

    .line 12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 15
    return-void

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/utils/MultiFilter;->extFinder:Ljava/util/HashMap;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3
    .parameter "f"

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, ext:Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/nix/apps/androlib/wallpapers/utils/MultiFilter;->extFinder:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 25
    .end local v1           #ext:Ljava/lang/String;
    :goto_0
    return v2

    .line 23
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 24
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    const/4 v2, 0x0

    goto :goto_0
.end method
