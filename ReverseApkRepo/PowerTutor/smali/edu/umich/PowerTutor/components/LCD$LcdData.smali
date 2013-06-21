.class public Ledu/umich/PowerTutor/components/LCD$LcdData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "LCD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/LCD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LcdData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/LCD$LcdData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public brightness:I

.field public screenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/LCD$LcdData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/PowerData;-><init>()V

    .line 63
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/LCD$LcdData;
    .locals 2

    .prologue
    .line 49
    sget-object v1, Ledu/umich/PowerTutor/components/LCD$LcdData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/LCD$LcdData;

    .line 50
    .local v0, result:Ledu/umich/PowerTutor/components/LCD$LcdData;
    if-eqz v0, :cond_0

    .line 51
    .end local v0           #result:Ledu/umich/PowerTutor/components/LCD$LcdData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/LCD$LcdData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/LCD$LcdData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/LCD$LcdData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/LCD$LcdData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init(IZ)V
    .locals 0
    .parameter "brightness"
    .parameter "screenOn"

    .prologue
    .line 66
    iput p1, p0, Ledu/umich/PowerTutor/components/LCD$LcdData;->brightness:I

    .line 67
    iput-boolean p2, p0, Ledu/umich/PowerTutor/components/LCD$LcdData;->screenOn:Z

    .line 68
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ledu/umich/PowerTutor/components/LCD$LcdData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 57
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
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "LCD-brightness "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ledu/umich/PowerTutor/components/LCD$LcdData;->brightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, "\nLCD-screen-on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ledu/umich/PowerTutor/components/LCD$LcdData;->screenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 75
    return-void
.end method
