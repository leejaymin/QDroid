.class public Lcom/rookiestudio/baseclass/StorageOptions;
.super Ljava/lang/Object;
.source "StorageOptions.java"


# static fields
.field public static count:I

.field public static labels:[Ljava/lang/String;

.field private static mMounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mVold:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static paths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/rookiestudio/baseclass/StorageOptions;->mVold:Ljava/util/ArrayList;

    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/rookiestudio/baseclass/StorageOptions;->count:I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compareMountsWithVold()V
    .locals 4

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 117
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mVold:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 118
    return-void

    .line 111
    :cond_0
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 112
    .local v2, mount:Ljava/lang/String;
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mVold:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 110
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static determineStorageOptions()V
    .locals 0

    .prologue
    .line 19
    invoke-static {}, Lcom/rookiestudio/baseclass/StorageOptions;->readMountsFile()V

    .line 21
    invoke-static {}, Lcom/rookiestudio/baseclass/StorageOptions;->readVoldFile()V

    .line 23
    invoke-static {}, Lcom/rookiestudio/baseclass/StorageOptions;->compareMountsWithVold()V

    .line 25
    invoke-static {}, Lcom/rookiestudio/baseclass/StorageOptions;->testAndCleanMountsList()V

    .line 27
    invoke-static {}, Lcom/rookiestudio/baseclass/StorageOptions;->setProperties()V

    .line 28
    return-void
.end method

.method private static readMountsFile()V
    .locals 7

    .prologue
    .line 43
    sget-object v5, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    const-string v6, "/mnt/sdcard"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/mounts"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 47
    .local v4, scanner:Ljava/util/Scanner;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    :goto_1
    return-void

    .line 48
    :cond_1
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, line:Ljava/lang/String;
    const-string v5, "/dev/block/vold/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, lineElements:[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, v3, v5

    .line 55
    .local v1, element:Ljava/lang/String;
    const-string v5, "/mnt/sdcard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #lineElements:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static readVoldFile()V
    .locals 7

    .prologue
    .line 78
    sget-object v5, Lcom/rookiestudio/baseclass/StorageOptions;->mVold:Ljava/util/ArrayList;

    const-string v6, "/mnt/sdcard"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    new-instance v5, Ljava/io/File;

    const-string v6, "/system/etc/vold.fstab"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 82
    .local v4, scanner:Ljava/util/Scanner;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    :goto_1
    return-void

    .line 83
    :cond_1
    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, line:Ljava/lang/String;
    const-string v5, "dev_mount"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, lineElements:[Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v1, v3, v5

    .line 88
    .local v1, element:Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    const/4 v5, 0x0

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_2
    const-string v5, "/mnt/sdcard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/rookiestudio/baseclass/StorageOptions;->mVold:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #lineElements:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static setProperties()V
    .locals 5

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v2, mLabels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 145
    .local v1, j:I
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 146
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 147
    const-string v3, "Auto"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_0
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 166
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 172
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->labels:[Ljava/lang/String;

    .line 173
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->labels:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 175
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->paths:[Ljava/lang/String;

    .line 176
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    sget-object v4, Lcom/rookiestudio/baseclass/StorageOptions;->paths:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 178
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->labels:[Ljava/lang/String;

    array-length v3, v3

    sget-object v4, Lcom/rookiestudio/baseclass/StorageOptions;->paths:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/rookiestudio/baseclass/StorageOptions;->count:I

    .line 182
    sget-object v3, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 183
    return-void

    .line 160
    :cond_1
    const-string v3, "External SD Card 1"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v1, 0x1

    goto :goto_0

    .line 167
    .restart local v0       #i:I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "External SD Card "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static testAndCleanMountsList()V
    .locals 5

    .prologue
    .line 128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 134
    return-void

    .line 129
    :cond_0
    sget-object v4, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, mount:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, root:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    :cond_1
    sget-object v4, Lcom/rookiestudio/baseclass/StorageOptions;->mMounts:Ljava/util/ArrayList;

    add-int/lit8 v1, v0, -0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 128
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
