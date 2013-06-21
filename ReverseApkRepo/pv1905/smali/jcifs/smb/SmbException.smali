.class public Ljcifs/smb/SmbException;
.super Ljava/io/IOException;
.source "SmbException.java"

# interfaces
.implements Ljcifs/smb/NtStatus;
.implements Ljcifs/smb/DosError;
.implements Ljcifs/smb/WinError;


# instance fields
.field private rootCause:Ljava/lang/Throwable;

.field private status:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 132
    return-void
.end method

.method constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .parameter "errcode"
    .parameter "rootCause"

    .prologue
    .line 134
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result v0

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    .line 136
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    .line 137
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter "errcode"
    .parameter "winerr"

    .prologue
    .line 148
    if-eqz p2, :cond_0

    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByWinerrCode(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 149
    if-eqz p2, :cond_1

    .end local p1
    :goto_1
    iput p1, p0, Ljcifs/smb/SmbException;->status:I

    .line 150
    return-void

    .line 148
    .restart local p1
    :cond_0
    invoke-static {p1}, Ljcifs/smb/SmbException;->getMessageByCode(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {p1}, Ljcifs/smb/SmbException;->getStatusByCode(I)I

    move-result p1

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 140
    const v0, -0x3fffffff

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    .line 141
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "rootCause"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 144
    iput-object p2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    .line 145
    const v0, -0x3fffffff

    iput v0, p0, Ljcifs/smb/SmbException;->status:I

    .line 146
    return-void
.end method

.method static getMessageByCode(I)Ljava/lang/String;
    .locals 6
    .parameter "errcode"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x4000

    .line 49
    if-nez p0, :cond_0

    .line 50
    const-string v3, "NT_STATUS_SUCCESS"

    .line 84
    :goto_0
    return-object v3

    .line 52
    :cond_0
    and-int v3, p0, v4

    if-ne v3, v4, :cond_5

    .line 53
    const/4 v2, 0x1

    .line 54
    .local v2, min:I
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 56
    .local v0, max:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 84
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-static {p0, v4}, Ljcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 57
    :cond_2
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 59
    .local v1, mid:I
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    aget v3, v3, v1

    if-le p0, v3, :cond_3

    .line 60
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    .line 61
    :cond_3
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_CODES:[I

    aget v3, v3, v1

    if-ge p0, v3, :cond_4

    .line 62
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 64
    :cond_4
    sget-object v3, Ljcifs/smb/SmbException;->NT_STATUS_MESSAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_0

    .line 68
    .end local v0           #max:I
    .end local v1           #mid:I
    .end local v2           #min:I
    :cond_5
    const/4 v2, 0x0

    .line 69
    .restart local v2       #min:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 71
    .restart local v0       #max:I
    :goto_2
    if-lt v0, v2, :cond_1

    .line 72
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 74
    .restart local v1       #mid:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-le p0, v3, :cond_6

    .line 75
    add-int/lit8 v2, v1, 0x1

    goto :goto_2

    .line 76
    :cond_6
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v5

    if-ge p0, v3, :cond_7

    .line 77
    add-int/lit8 v0, v1, -0x1

    goto :goto_2

    .line 79
    :cond_7
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_MESSAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_0
.end method

.method static getMessageByWinerrCode(I)Ljava/lang/String;
    .locals 5
    .parameter "errcode"

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, min:I
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 112
    .local v0, max:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    .line 113
    :cond_0
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 115
    .local v1, mid:I
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    aget v3, v3, v1

    if-le p0, v3, :cond_1

    .line 116
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_CODES:[I

    aget v3, v3, v1

    if-ge p0, v3, :cond_2

    .line 118
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 120
    :cond_2
    sget-object v3, Ljcifs/smb/SmbException;->WINERR_MESSAGES:[Ljava/lang/String;

    aget-object v3, v3, v1

    goto :goto_1
.end method

.method static getStatusByCode(I)I
    .locals 5
    .parameter "errcode"

    .prologue
    const/4 v4, 0x0

    .line 87
    const/high16 v3, -0x4000

    and-int/2addr v3, p0

    if-eqz v3, :cond_0

    .line 106
    .end local p0
    .local v0, max:I
    .local v1, mid:I
    .local v2, min:I
    :goto_0
    return p0

    .line 90
    .end local v0           #max:I
    .end local v1           #mid:I
    .end local v2           #min:I
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    .line 91
    .restart local v2       #min:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .line 93
    .restart local v0       #max:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 106
    const p0, -0x3fffffff

    goto :goto_0

    .line 94
    :cond_1
    add-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 96
    .restart local v1       #mid:I
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v4

    if-le p0, v3, :cond_2

    .line 97
    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    .line 98
    :cond_2
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    aget v3, v3, v4

    if-ge p0, v3, :cond_3

    .line 99
    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    .line 101
    :cond_3
    sget-object v3, Ljcifs/smb/SmbException;->DOS_ERROR_CODES:[[I

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget p0, v3, v4

    goto :goto_0
.end method


# virtual methods
.method public getNtStatus()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Ljcifs/smb/SmbException;->status:I

    return v0
.end method

.method public getRootCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 159
    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 160
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 161
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 162
    .local v0, pw:Ljava/io/PrintWriter;
    iget-object v2, p0, Ljcifs/smb/SmbException;->rootCause:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .end local v0           #pw:Ljava/io/PrintWriter;
    .end local v1           #sw:Ljava/io/StringWriter;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
