.class public Lcom/kavsdk/updater/Index$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lcom/kavsdk/updater/Index$Entry; = null

.field private static final serialVersionUID:J = 0x329678492509773aL


# instance fields
.field private final transient b:Ljava/lang/String;

.field private final mDate:Ljava/util/Date;

.field private final mFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/kavsdk/updater/Index$Entry;

    invoke-direct {v0}, Lcom/kavsdk/updater/Index$Entry;-><init>()V

    sput-object v0, Lcom/kavsdk/updater/Index$Entry;->a:Lcom/kavsdk/updater/Index$Entry;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->b:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->mFileName:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->mDate:Ljava/util/Date;

    .line 102
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/kavsdk/updater/Index$Entry;->b:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/kavsdk/updater/Index$Entry;->mFileName:Ljava/lang/String;

    .line 80
    if-nez p3, :cond_0

    .line 82
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->mDate:Ljava/util/Date;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/kavsdk/updater/Index;->access$000()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->mDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100()Lcom/kavsdk/updater/Index$Entry;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/kavsdk/updater/Index$Entry;->a:Lcom/kavsdk/updater/Index$Entry;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Lcom/kavsdk/updater/Index$Entry;

    if-eqz v1, :cond_0

    .line 124
    check-cast p1, Lcom/kavsdk/updater/Index$Entry;

    .line 125
    iget-object v1, p0, Lcom/kavsdk/updater/Index$Entry;->mFileName:Ljava/lang/String;

    iget-object v2, p1, Lcom/kavsdk/updater/Index$Entry;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kavsdk/updater/Index$Entry;->mDate:Ljava/util/Date;

    iget-object v2, p1, Lcom/kavsdk/updater/Index$Entry;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Ljava/net/URL;)Ljava/net/URL;
    .locals 3
    .parameter

    .prologue
    .line 106
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kavsdk/updater/Index$Entry;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kavsdk/updater/Index$Entry;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/kavsdk/updater/Index$Entry;->mFileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xbb

    add-int/lit8 v0, v0, 0xb

    .line 136
    mul-int/lit8 v1, v0, 0x11

    iget-object v2, p0, Lcom/kavsdk/updater/Index$Entry;->mDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 137
    return v0
.end method
