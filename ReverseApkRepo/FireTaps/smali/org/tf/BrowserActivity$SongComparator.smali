.class Lorg/tf/BrowserActivity$SongComparator;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SongComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/tf/song/SongInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/tf/BrowserActivity$SongComparator;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    invoke-direct {p0}, Lorg/tf/BrowserActivity$SongComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/tf/song/SongInfo;

    check-cast p2, Lorg/tf/song/SongInfo;

    invoke-virtual {p0, p1, p2}, Lorg/tf/BrowserActivity$SongComparator;->compare(Lorg/tf/song/SongInfo;Lorg/tf/song/SongInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/tf/song/SongInfo;Lorg/tf/song/SongInfo;)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 528
    invoke-virtual {p1}, Lorg/tf/song/SongInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/tf/song/SongInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Lorg/tf/BrowserActivity$SongComparator;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 531
    const/4 v0, 0x1

    return v0
.end method
