.class public final Lb/a/a/a/a/a/l;
.super Lb/a/a/a/a/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/l;-><init>(Lb/a/a/a/a/e;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/a/e;)V
    .locals 1

    const-string v0, "(\\S+)\\s+(\\d+)\\s+(\\S+)\\s+(\\S+)\\s+(\\*\\S+)\\s+(\\S+/?)\\s*"

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/l;->a(Lb/a/a/a/a/e;)V

    return-void
.end method


# virtual methods
.method protected final a()Lb/a/a/a/a/e;
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "OS/400"

    const-string v2, "yy/MM/dd HH:mm:ss"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 9

    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v4, Lb/a/a/a/a/h;

    invoke-direct {v4}, Lb/a/a/a/a/h;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/l;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lb/a/a/a/a/a/l;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/l;->a(I)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/l;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lb/a/a/a/a/a/l;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/l;->a(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/l;->a(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-super {p0, v7}, Lb/a/a/a/a/a/b;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v4, v7}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v7, "*STMF"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v1

    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Lb/a/a/a/a/h;->a(I)V

    invoke-virtual {v4, v5}, Lb/a/a/a/a/h;->d(Ljava/lang/String;)V

    :try_start_1
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lb/a/a/a/a/h;->a(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v4, v0}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    move-object v0, v4

    :goto_4
    return-object v0

    :cond_2
    const-string v7, "*DIR"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_3
.end method
