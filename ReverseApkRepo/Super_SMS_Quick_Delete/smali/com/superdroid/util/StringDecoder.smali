.class public Lcom/superdroid/util/StringDecoder;
.super Ljava/lang/Object;
.source "StringDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/superdroid/util/StringDecoder$CharacterSet;
    }
.end annotation


# instance fields
.field private _charset:I

.field private _data:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .parameter "charset"
    .parameter "data"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/superdroid/util/StringDecoder;->_charset:I

    .line 12
    iput-object p2, p0, Lcom/superdroid/util/StringDecoder;->_data:[B

    .line 13
    return-void
.end method


# virtual methods
.method public getDecodedString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 16
    iget v2, p0, Lcom/superdroid/util/StringDecoder;->_charset:I

    invoke-static {v2}, Lcom/superdroid/util/StringDecoder$CharacterSet;->getCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, charSetName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 18
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/superdroid/util/StringDecoder;->_data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 24
    :goto_0
    return-object v2

    .line 22
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/superdroid/util/StringDecoder;->_data:[B

    invoke-direct {v2, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 24
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/superdroid/util/StringDecoder;->_data:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method
