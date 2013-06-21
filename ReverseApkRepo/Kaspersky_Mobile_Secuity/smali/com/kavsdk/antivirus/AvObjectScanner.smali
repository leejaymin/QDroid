.class public Lcom/kavsdk/antivirus/AvObjectScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lao;

.field private mContext:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v0, "AvObjectScanner() enter, monitor pointer: "

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "av_object_scanner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/kavsdk/antivirus/BasesStorage;->a()Lcom/kavsdk/antivirus/BasesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kavsdk/antivirus/BasesStorage;->c()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/kavsdk/antivirus/AvObjectScanner;->init(Ljava/lang/String;II)I

    move-result v0

    .line 153
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    const-string v0, "av_object_scanner"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Error - can\'t find antivirus bases"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    .line 160
    const-string v0, "av_object_scanner"

    const-string v1, "result != KAV_ERROR_OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Error loading antivirus configuration"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_1
    return-void
.end method

.method private native free()V
.end method

.method private native init(Ljava/lang/String;II)I
.end method

.method public static native isDirectory(Ljava/lang/String;)Z
.end method

.method private scannerCallback(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    sget-object v6, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->None:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    .line 184
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvObjectScanner;->a:Lao;

    if-eqz v0, :cond_4

    .line 186
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 188
    const-string v0, "Monitor."

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RiskTool."

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RemoteAdmin."

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :cond_0
    sget-object v6, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->Riskware:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    .line 204
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kavsdk/antivirus/AvObjectScanner;->a:Lao;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lao;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;)I

    move-result v0

    .line 207
    :goto_1
    return v0

    .line 194
    :cond_2
    const-string v0, "Adware."

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    sget-object v6, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->Adware:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    goto :goto_0

    .line 200
    :cond_3
    sget-object v6, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->Malware:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    goto :goto_0

    .line 207
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lao;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/kavsdk/antivirus/AvObjectScanner;->a:Lao;

    .line 170
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/kavsdk/antivirus/AvObjectScanner;->free()V

    .line 213
    return-void
.end method

.method public native getFilesCount(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public native scanFile(Ljava/lang/String;I)I
.end method

.method public native scanFolder(Ljava/lang/String;I[Ljava/lang/String;)I
.end method

.method public native setScanningMode(II)V
.end method
