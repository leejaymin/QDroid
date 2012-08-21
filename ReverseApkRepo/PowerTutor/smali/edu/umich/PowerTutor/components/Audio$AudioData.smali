.class public Ledu/umich/PowerTutor/components/Audio$AudioData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/Audio$AudioData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public musicOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/Audio$AudioData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/PowerData;-><init>()V

    .line 55
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/Audio$AudioData;
    .locals 2

    .prologue
    .line 42
    sget-object v1, Ledu/umich/PowerTutor/components/Audio$AudioData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/Audio$AudioData;

    .line 43
    .local v0, result:Ledu/umich/PowerTutor/components/Audio$AudioData;
    if-eqz v0, :cond_0

    .line 44
    .end local v0           #result:Ledu/umich/PowerTutor/components/Audio$AudioData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/Audio$AudioData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/Audio$AudioData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/Audio$AudioData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Audio$AudioData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init(Z)V
    .locals 0
    .parameter "musicOn"

    .prologue
    .line 58
    iput-boolean p1, p0, Ledu/umich/PowerTutor/components/Audio$AudioData;->musicOn:Z

    .line 59
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Ledu/umich/PowerTutor/components/Audio$AudioData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public writeLogDataInfo(Ljava/io/OutputStreamWriter;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio-on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ledu/umich/PowerTutor/components/Audio$AudioData;->musicOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 63
    return-void
.end method
