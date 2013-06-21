.class public final Lex;
.super Lev;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lev;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 9
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    move v1, v2

    .line 10
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 11
    aget-object v0, p1, v1

    check-cast v0, [B

    invoke-static {v0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    iget-object v3, p0, Lex;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 14
    const-string v3, ""

    iput-object v3, p0, Lex;->b:Ljava/lang/String;

    .line 17
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lex;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lex;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 21
    :goto_1
    iget-object v3, p0, Lex;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 23
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lex;->c:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 10
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lex;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lex;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lex;->a:Z

    .line 31
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1
.end method
