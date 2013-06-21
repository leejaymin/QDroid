.class Ljcifs/smb/Trans2GetDfsReferral;
.super Ljcifs/smb/SmbComTransaction;
.source "Trans2GetDfsReferral.java"


# instance fields
.field private maxReferralLevel:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljcifs/smb/SmbComTransaction;-><init>()V

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    .line 26
    iput-object p1, p0, Ljcifs/smb/Trans2GetDfsReferral;->path:Ljava/lang/String;

    .line 27
    const/16 v0, 0x32

    iput-byte v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->command:B

    .line 28
    const/16 v0, 0x10

    iput-byte v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->subCommand:B

    .line 29
    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->totalDataCount:I

    .line 30
    iput v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxParameterCount:I

    .line 31
    const/16 v0, 0x1000

    iput v0, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxDataCount:I

    .line 32
    iput-byte v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxSetupCount:B

    .line 33
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trans2GetDfsReferral["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljcifs/smb/SmbComTransaction;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    const-string v2, ",maxReferralLevel=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64
    const-string v2, ",filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/smb/Trans2GetDfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method writeDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 3
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 41
    move v0, p2

    .line 43
    .local v0, start:I
    iget v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->maxReferralLevel:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1, p2}, Ljcifs/smb/Trans2GetDfsReferral;->writeInt2(J[BI)V

    .line 44
    add-int/lit8 p2, p2, 0x2

    .line 45
    iget-object v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->path:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, p2}, Ljcifs/smb/Trans2GetDfsReferral;->writeString(Ljava/lang/String;[BI)I

    move-result v1

    add-int/2addr p2, v1

    .line 47
    sub-int v1, p2, v0

    return v1
.end method

.method writeSetupWireFormat([BI)I
    .locals 2
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 36
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, dstIndex:I
    iget-byte v1, p0, Ljcifs/smb/Trans2GetDfsReferral;->subCommand:B

    aput-byte v1, p1, p2

    .line 37
    add-int/lit8 p2, v0, 0x1

    .end local v0           #dstIndex:I
    .restart local p2
    const/4 v1, 0x0

    aput-byte v1, p1, v0

    .line 38
    const/4 v1, 0x2

    return v1
.end method
