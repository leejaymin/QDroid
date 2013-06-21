.class public Lb/a/a/a/a/a/p;
.super Lb/a/a/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/p;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    const-string v0, "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/b;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/a/a/a/a/p;->a(Lb/a/a/a/a/e;)V

    return-void
.end method


# virtual methods
.method protected final a()Lb/a/a/a/a/e;
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "VMS"

    const-string v2, "d-MMM-yyyy HH:mm:ss"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/p;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v4, Lb/a/a/a/a/h;

    invoke-direct {v4}, Lb/a/a/a/a/h;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v11}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/String;

    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    const/16 v9, 0xb

    invoke-virtual {p0, v9}, Lb/a/a/a/a/a/p;->a(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    :try_start_0
    invoke-super {p0, v0}, Lb/a/a/a/a/a/b;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v0, v7, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move-object v0, v1

    :goto_1
    const-string v7, ".DIR"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_0

    invoke-virtual {v4, v2}, Lb/a/a/a/a/h;->a(I)V

    :goto_2
    invoke-virtual {p0}, Lb/a/a/a/a/a/p;->b()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v5}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    :goto_3
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v9, 0x200

    mul-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Lb/a/a/a/a/h;->a(J)V

    invoke-virtual {v4, v1}, Lb/a/a/a/a/h;->c(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lb/a/a/a/a/h;->d(Ljava/lang/String;)V

    move v1, v3

    :goto_4
    if-ge v1, v12, :cond_5

    aget-object v5, v8, v1

    const/16 v0, 0x52

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    move v0, v2

    :goto_5
    invoke-virtual {v4, v1, v3, v0}, Lb/a/a/a/a/h;->a(IIZ)V

    const/16 v0, 0x57

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    move v0, v2

    :goto_6
    invoke-virtual {v4, v1, v2, v0}, Lb/a/a/a/a/h;->a(IIZ)V

    const/16 v0, 0x45

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    move v0, v2

    :goto_7
    invoke-virtual {v4, v1, v11, v0}, Lb/a/a/a/a/h;->a(IIZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :pswitch_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v3}, Lb/a/a/a/a/h;->a(I)V

    goto :goto_2

    :cond_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move v0, v3

    goto :goto_5

    :cond_3
    move v0, v3

    goto :goto_6

    :cond_4
    move v0, v3

    goto :goto_7

    :cond_5
    move-object v1, v4

    :cond_6
    return-object v1

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz v0, :cond_2

    const-string v2, "Directory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Total"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
