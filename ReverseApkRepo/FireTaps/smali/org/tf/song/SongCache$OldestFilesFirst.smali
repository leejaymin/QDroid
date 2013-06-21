.class Lorg/tf/song/SongCache$OldestFilesFirst;
.super Ljava/lang/Object;
.source "SongCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/song/SongCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OldestFilesFirst"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/tf/song/SongCache$OldestFilesFirst;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lorg/tf/song/SongCache$OldestFilesFirst;

    invoke-direct {v0}, Lorg/tf/song/SongCache$OldestFilesFirst;-><init>()V

    .line 84
    sput-object v0, Lorg/tf/song/SongCache$OldestFilesFirst;->INSTANCE:Lorg/tf/song/SongCache$OldestFilesFirst;

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 74
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 75
    .local v0, xModified:J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 76
    .local v2, yModified:J
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 77
    const/4 v4, 0x0

    .line 81
    :goto_0
    return v4

    .line 78
    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 79
    const/4 v4, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lorg/tf/song/SongCache$OldestFilesFirst;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
