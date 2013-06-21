.class public Lcom/pgmsoft/wifinder/RowList;
.super Ljava/lang/Object;
.source "RowList.java"


# static fields
.field public static final CLOSE:I = 0x1

.field public static final LEVEL_DBM:I = 0x2

.field public static final LEVEL_GRAPH:I = 0x0

.field public static final LEVEL_PERCENT:I = 0x1

.field public static final NA:I = -0x1

.field public static final OPEN:I = 0x0

.field public static final WifiON:I = 0x2


# instance fields
.field private animation_run:Z

.field private bssid:Ljava/lang/String;

.field private chanel:I

.field private encrypt:Ljava/lang/String;

.field private level:I

.field private level_choose:I

.field private ssid:Ljava/lang/String;

.field private status:I

.field private statusWifi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "ssid"
    .parameter "chanel"
    .parameter "level"
    .parameter "status"
    .parameter "bssid"
    .parameter "encrypt"
    .parameter "statusWifi"
    .parameter "animation_run"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->ssid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->bssid:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->encrypt:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->statusWifi:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/pgmsoft/wifinder/RowList;->chanel:I

    .line 22
    iput v1, p0, Lcom/pgmsoft/wifinder/RowList;->level:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/pgmsoft/wifinder/RowList;->status:I

    .line 24
    iput-boolean v1, p0, Lcom/pgmsoft/wifinder/RowList;->animation_run:Z

    .line 25
    iput v1, p0, Lcom/pgmsoft/wifinder/RowList;->level_choose:I

    .line 28
    iput-object p1, p0, Lcom/pgmsoft/wifinder/RowList;->ssid:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/pgmsoft/wifinder/RowList;->chanel:I

    .line 30
    iput p3, p0, Lcom/pgmsoft/wifinder/RowList;->level:I

    .line 31
    iput p4, p0, Lcom/pgmsoft/wifinder/RowList;->status:I

    .line 32
    iput-object p5, p0, Lcom/pgmsoft/wifinder/RowList;->bssid:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/pgmsoft/wifinder/RowList;->encrypt:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/pgmsoft/wifinder/RowList;->statusWifi:Ljava/lang/String;

    .line 35
    iput-boolean p8, p0, Lcom/pgmsoft/wifinder/RowList;->animation_run:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getAnimationRun()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/pgmsoft/wifinder/RowList;->animation_run:Z

    return v0
.end method

.method public getBessid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getChanel()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/pgmsoft/wifinder/RowList;->chanel:I

    return v0
.end method

.method public getEncrypt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->encrypt:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelChoose()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/pgmsoft/wifinder/RowList;->level_choose:I

    return v0
.end method

.method public getLevelGraph()I
    .locals 3

    .prologue
    .line 74
    iget v1, p0, Lcom/pgmsoft/wifinder/RowList;->level:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_0

    .line 75
    const/4 v0, -0x1

    .line 78
    .local v0, signal:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 90
    const v1, 0x7f020005

    :goto_1
    return v1

    .line 77
    .end local v0           #signal:I
    :cond_0
    iget v1, p0, Lcom/pgmsoft/wifinder/RowList;->level:I

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .restart local v0       #signal:I
    goto :goto_0

    .line 80
    :pswitch_0
    const v1, 0x7f020006

    goto :goto_1

    .line 82
    :pswitch_1
    const v1, 0x7f020007

    goto :goto_1

    .line 84
    :pswitch_2
    const v1, 0x7f020008

    goto :goto_1

    .line 86
    :pswitch_3
    const v1, 0x7f020009

    goto :goto_1

    .line 88
    :pswitch_4
    const v1, 0x7f02000a

    goto :goto_1

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getLevelInt()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/pgmsoft/wifinder/RowList;->level:I

    return v0
.end method

.method public getLevelPercent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    :try_start_0
    iget v2, p0, Lcom/pgmsoft/wifinder/RowList;->level:I

    const/16 v3, 0xa

    invoke-static {v2, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    mul-int/lit8 v1, v2, 0xa

    .line 69
    .local v1, signal:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 66
    .end local v1           #signal:I
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/ArithmeticException;
    const/4 v1, 0x0

    .restart local v1       #signal:I
    goto :goto_0
.end method

.method public getLeveldBm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pgmsoft/wifinder/RowList;->level:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " dBm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusResource()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/pgmsoft/wifinder/RowList;->status:I

    packed-switch v0, :pswitch_data_0

    .line 124
    const v0, 0x7f020001

    :goto_0
    return v0

    .line 116
    :pswitch_0
    const v0, 0x7f020004

    goto :goto_0

    .line 119
    :pswitch_1
    const/high16 v0, 0x7f02

    goto :goto_0

    .line 122
    :pswitch_2
    const v0, 0x7f02000b

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getStatusWifi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/pgmsoft/wifinder/RowList;->statusWifi:Ljava/lang/String;

    return-object v0
.end method

.method public setLevelChoose(I)V
    .locals 0
    .parameter "choose"

    .prologue
    .line 43
    iput p1, p0, Lcom/pgmsoft/wifinder/RowList;->level_choose:I

    .line 44
    return-void
.end method
