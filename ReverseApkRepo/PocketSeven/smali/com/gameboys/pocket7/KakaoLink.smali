.class public Lcom/gameboys/pocket7/KakaoLink;
.super Ljava/lang/Object;
.source "KakaoLink.java"


# static fields
.field static final kakaoLinkCharset:Ljava/nio/charset/Charset;

.field static final kakaoLinkEncoding:Ljava/lang/String;


# instance fields
.field private apiVer:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private arrMetaInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private data:Landroid/net/Uri;

.field private encoding:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private msg:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkCharset:Ljava/nio/charset/Charset;

    .line 30
    sget-object v0, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "appId"
    .parameter "appVersion"
    .parameter "msg"
    .parameter "appName"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->type:Ljava/lang/String;

    .line 41
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->apiVer:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/gameboys/pocket7/KakaoLink;->arrMetaInfo:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/gameboys/pocket7/KakaoLink;->context:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/gameboys/pocket7/KakaoLink;->appId:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/gameboys/pocket7/KakaoLink;->version:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/gameboys/pocket7/KakaoLink;->url:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    .line 62
    iput-object p7, p0, Lcom/gameboys/pocket7/KakaoLink;->encoding:Ljava/lang/String;

    .line 64
    const-string v0, "link"

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->type:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/gameboys/pocket7/KakaoLink;->arrMetaInfo:Ljava/util/ArrayList;

    .line 68
    invoke-direct {p0}, Lcom/gameboys/pocket7/KakaoLink;->createLinkData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->data:Landroid/net/Uri;

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->data:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->intent:Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"
    .parameter "appId"
    .parameter "appVersion"
    .parameter "msg"
    .parameter "appName"
    .parameter
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 84
    .local p7, arrMetaInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->type:Ljava/lang/String;

    .line 41
    const-string v0, "2.0"

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->apiVer:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->arrMetaInfo:Ljava/util/ArrayList;

    .line 93
    iput-object p1, p0, Lcom/gameboys/pocket7/KakaoLink;->context:Landroid/content/Context;

    .line 94
    iput-object p3, p0, Lcom/gameboys/pocket7/KakaoLink;->appId:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/gameboys/pocket7/KakaoLink;->version:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/gameboys/pocket7/KakaoLink;->url:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    .line 98
    const-string v0, "app"

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->type:Ljava/lang/String;

    .line 99
    iput-object p6, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    .line 100
    iput-object p7, p0, Lcom/gameboys/pocket7/KakaoLink;->arrMetaInfo:Ljava/util/ArrayList;

    .line 101
    iput-object p8, p0, Lcom/gameboys/pocket7/KakaoLink;->encoding:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/gameboys/pocket7/KakaoLink;->createAppLinkData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->data:Landroid/net/Uri;

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->data:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->intent:Landroid/content/Intent;

    .line 105
    return-void
.end method

.method private createAppLinkData()Landroid/net/Uri;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->appId:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->type:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->arrMetaInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->arrMetaInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 138
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 141
    :cond_3
    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->encoding:Ljava/lang/String;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 143
    .local v0, charset:Ljava/nio/charset/Charset;
    sget-object v3, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 144
    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 145
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    .line 149
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kakaolink://sendurl?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "&msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 153
    const-string v3, "&url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->url:Ljava/lang/String;

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_5
    const-string v3, "&appid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->appId:Ljava/lang/String;

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->version:Ljava/lang/String;

    invoke-static {v3}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 159
    const-string v3, "&appver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->version:Ljava/lang/String;

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_6
    const-string v3, "&type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->type:Ljava/lang/String;

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v3, "&apiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->apiVer:Ljava/lang/String;

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v3, "&appname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    sget-object v5, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {p0}, Lcom/gameboys/pocket7/KakaoLink;->makeJsonMetaInfo()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, jsonMetaInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 168
    const-string v3, "&metainfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_7
    const-string v3, "TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "++ sb.toString() : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private createLinkData()Landroid/net/Uri;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->appId:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->version:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->encoding:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameboys/pocket7/KakaoLink;->isEmptyString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->encoding:Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 114
    .local v0, charset:Ljava/nio/charset/Charset;
    sget-object v2, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkCharset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    .line 118
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kakaolink://sendurl?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string v2, "appid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->appId:Ljava/lang/String;

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v2, "&appver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->version:Ljava/lang/String;

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v2, "&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->url:Ljava/lang/String;

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, "&msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->msg:Ljava/lang/String;

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, "&type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->type:Ljava/lang/String;

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "&apiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->apiVer:Ljava/lang/String;

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, "&appname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/gameboys/pocket7/KakaoLink;->appName:Ljava/lang/String;

    sget-object v4, Lcom/gameboys/pocket7/KakaoLink;->kakaoLinkEncoding:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, "TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "++ sb.toString() : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static isAvailableIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 210
    const/high16 v3, 0x1

    .line 209
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 216
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeJsonMetaInfo()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v2, jsonObj:Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 181
    .local v1, jsonArrMetaInfo:Lorg/json/JSONArray;
    :try_start_0
    iget-object v6, p0, Lcom/gameboys/pocket7/KakaoLink;->arrMetaInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 188
    const-string v6, "metainfo"

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 181
    :cond_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 182
    .local v4, metaInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 183
    .local v5, metaObj:Lorg/json/JSONObject;
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 186
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 189
    .end local v4           #metaInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #metaObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 183
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v4       #metaInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #metaObj:Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    .local v3, key:Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->data:Landroid/net/Uri;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/gameboys/pocket7/KakaoLink;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gameboys/pocket7/KakaoLink;->intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/gameboys/pocket7/KakaoLink;->isAvailableIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
