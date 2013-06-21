.class public final Lb/a/a/a/a/a/o;
.super Lb/a/a/a/a/a/b;


# static fields
.field public static final b:Lb/a/a/a/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "UNIX"

    const-string v2, "yyyy-MM-dd HH:mm"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb/a/a/a/a/a/o;->b:Lb/a/a/a/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/o;-><init>(Lb/a/a/a/a/e;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/a/e;)V
    .locals 1

    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lb/a/a/a/a/a/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/o;->a(Lb/a/a/a/a/e;)V

    return-void
.end method


# virtual methods
.method protected final a()Lb/a/a/a/a/e;
    .locals 4

    new-instance v0, Lb/a/a/a/a/e;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lb/a/a/a/a/h;
    .locals 14

    new-instance v4, Lb/a/a/a/a/h;

    invoke-direct {v4}, Lb/a/a/a/a/h;-><init>()V

    invoke-virtual {v4, p1}, Lb/a/a/a/a/h;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/o;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    invoke-super {p0, v2}, Lb/a/a/a/a/a/b;->b(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v4, v2}, Lb/a/a/a/a/h;->a(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v4, v1}, Lb/a/a/a/a/h;->a(I)V

    const/4 v5, 0x4

    const/4 v2, 0x0

    move v6, v5

    move v5, v2

    :goto_2
    const/4 v2, 0x3

    if-ge v5, v2, :cond_3

    const/4 v12, 0x0

    invoke-virtual {p0, v6}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "-"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v4, v5, v12, v2}, Lb/a/a/a/a/h;->a(IIZ)V

    const/4 v12, 0x1

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, "-"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v4, v5, v12, v2}, Lb/a/a/a/a/h;->a(IIZ)V

    add-int/lit8 v2, v6, 0x2

    invoke-virtual {p0, v2}, Lb/a/a/a/a/a/o;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v12, "-"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    const/4 v12, 0x1

    invoke-virtual {v4, v5, v2, v12}, Lb/a/a/a/a/h;->a(IIZ)V

    :goto_5
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v5, v6, 0x4

    move v6, v5

    move v5, v2

    goto :goto_2

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    goto :goto_4

    :cond_2
    const/4 v2, 0x2

    const/4 v12, 0x0

    invoke-virtual {v4, v5, v2, v12}, Lb/a/a/a/a/h;->a(IIZ)V

    goto :goto_5

    :cond_3
    if-nez v0, :cond_4

    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lb/a/a/a/a/h;->b(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_6
    invoke-virtual {v4, v8}, Lb/a/a/a/a/h;->d(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lb/a/a/a/a/h;->c(Ljava/lang/String;)V

    :try_start_2
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lb/a/a/a/a/h;->a(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_7
    if-eqz v11, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/a/a/a/a/h;->e(Ljava/lang/String;)V

    :goto_8
    move-object v0, v4

    :goto_9
    return-object v0

    :cond_5
    move-object v0, v3

    :cond_6
    invoke-virtual {v4, v0}, Lb/a/a/a/a/h;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_4
        0x62 -> :sswitch_3
        0x63 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6c -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "^total \\d+$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method
