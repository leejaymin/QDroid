.class public Ledu/umich/PowerTutor/components/OLED$OledData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "OLED.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/OLED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OledData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/OLED$OledData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public brightness:I

.field public pixPower:D

.field public screenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/OLED$OledData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/PowerData;-><init>()V

    .line 77
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/OLED$OledData;
    .locals 2

    .prologue
    .line 62
    sget-object v1, Ledu/umich/PowerTutor/components/OLED$OledData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/OLED$OledData;

    .line 63
    .local v0, result:Ledu/umich/PowerTutor/components/OLED$OledData;
    if-eqz v0, :cond_0

    .line 64
    .end local v0           #result:Ledu/umich/PowerTutor/components/OLED$OledData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/OLED$OledData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/OLED$OledData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/OLED$OledData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/OLED$OledData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/umich/PowerTutor/components/OLED$OledData;->screenOn:Z

    .line 81
    return-void
.end method

.method public init(ID)V
    .locals 1
    .parameter "brightness"
    .parameter "pixPower"

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/umich/PowerTutor/components/OLED$OledData;->screenOn:Z

    .line 85
    iput p1, p0, Ledu/umich/PowerTutor/components/OLED$OledData;->brightness:I

    .line 86
    iput-wide p2, p0, Ledu/umich/PowerTutor/components/OLED$OledData;->pixPower:D

    .line 87
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Ledu/umich/PowerTutor/components/OLED$OledData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public writeLogDataInfo(Ljava/io/OutputStreamWriter;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OLED-brightness "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ledu/umich/PowerTutor/components/OLED$OledData;->brightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OLED-pix-power "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ledu/umich/PowerTutor/components/OLED$OledData;->pixPower:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OLED-screen-on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ledu/umich/PowerTutor/components/OLED$OledData;->screenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 93
    return-void
.end method
