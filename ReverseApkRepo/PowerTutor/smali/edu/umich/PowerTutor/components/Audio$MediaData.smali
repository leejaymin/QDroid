.class Ledu/umich/PowerTutor/components/Audio$MediaData;
.super Ljava/lang/Object;
.source "Audio.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/Audio$MediaData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public assignUid:I

.field public id:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 66
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/Audio$MediaData;
    .locals 2

    .prologue
    .line 70
    sget-object v1, Ledu/umich/PowerTutor/components/Audio$MediaData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/Audio$MediaData;

    .line 71
    .local v0, result:Ledu/umich/PowerTutor/components/Audio$MediaData;
    if-eqz v0, :cond_0

    .line 72
    .end local v0           #result:Ledu/umich/PowerTutor/components/Audio$MediaData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/Audio$MediaData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/Audio$MediaData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/Audio$MediaData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Audio$MediaData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 84
    move-object v0, p1

    check-cast v0, Ledu/umich/PowerTutor/components/Audio$MediaData;

    .line 85
    .local v0, x:Ledu/umich/PowerTutor/components/Audio$MediaData;
    iget v3, p0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    iget v4, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    if-ge v3, v4, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    iget v3, p0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    iget v4, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    if-le v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 87
    :cond_2
    iget v3, p0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    iget v4, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    if-lt v3, v4, :cond_0

    .line 88
    iget v1, p0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    iget v3, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    if-le v1, v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 89
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 93
    move-object v0, p1

    check-cast v0, Ledu/umich/PowerTutor/components/Audio$MediaData;

    .line 94
    .local v0, x:Ledu/umich/PowerTutor/components/Audio$MediaData;
    iget v1, p0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    iget v2, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->uid:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    iget v2, v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->id:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Ledu/umich/PowerTutor/components/Audio$MediaData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
