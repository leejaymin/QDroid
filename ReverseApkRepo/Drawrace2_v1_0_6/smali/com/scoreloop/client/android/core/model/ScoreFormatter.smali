.class public Lcom/scoreloop/client/android/core/model/ScoreFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;,
        Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/scoreloop/client/android/core/model/ScoreFormatter;


# instance fields
.field private final c:Ljava/util/regex/Pattern;

.field private final d:Ljava/util/regex/Pattern;

.field private final e:Ljava/util/regex/Pattern;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    sput-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "%r%R %S %L %l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultTimeConversion:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "%h:%0m:%0s"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "%r%R"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "%L %l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeOnlyFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "%M %m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelAndModeFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "%L %l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ScoresAndLevelFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "%r%R %S %L %l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "Level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->MinorResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->Separator:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    const-string v2, "for"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "[ \r\n\t]*[\"]?([A-Za-z0-9]+(\\:[0-9]+)?)[\"]?[ ]*=[ ]*((\"([^\"\\\\]|\\\\\"|\\\\)*\")|[^;]*)[ \r\n\t]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->c:Ljava/util/regex/Pattern;

    .line 99
    const-string v0, "[0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->d:Ljava/util/regex/Pattern;

    .line 100
    const-string v0, "%[rRtTqQlLmMsSh]|%0[hmsq]|%[0-9]?[,\\+ 0]*\\.[0-9]+[rq]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->e:Ljava/util/regex/Pattern;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->g:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->h:Ljava/util/HashMap;

    .line 209
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->b(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private a(D)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultTimeConversion:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 302
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    const-wide v2, 0x40ac200000000000L

    div-double v2, p1, v2

    double-to-int v5, v2

    const-wide v2, 0x40ac200000000000L

    rem-double v2, p1, v2

    const-wide/high16 v6, 0x404e

    div-double/2addr v2, v6

    double-to-int v6, v2

    const-wide/high16 v2, 0x404e

    rem-double v2, p1, v2

    double-to-int v7, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v2, p1

    const-wide/high16 v8, 0x4059

    rem-double/2addr v2, v8

    double-to-int v8, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    const/4 v3, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported time token: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v0

    :goto_2
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    :cond_0
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 306
    goto :goto_0

    .line 303
    :cond_1
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :sswitch_0
    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_1
    int-to-long v5, v6

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_2
    int-to-long v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_3
    int-to-long v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 308
    :cond_2
    return-object v1

    .line 303
    nop

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_0
        0x6d -> :sswitch_1
        0x71 -> :sswitch_3
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    const/4 v0, 0x0

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 457
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 466
    :goto_0
    if-nez v1, :cond_0

    .line 468
    return-object v2

    .line 463
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 478
    if-eqz p1, :cond_7

    .line 480
    const/4 v0, 0x0

    .line 482
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 484
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 485
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 486
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 491
    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 495
    :cond_1
    const-string v4, "\\\""

    const-string v5, "\""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 498
    const-string v4, "mode:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    :try_start_0
    iget-object v4, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->g:Ljava/util/HashMap;

    const-string v5, "mode:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 529
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_5

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid mode key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 506
    :cond_2
    invoke-static {v3}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->parse(Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    move-result-object v4

    .line 508
    if-eqz v4, :cond_3

    .line 509
    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 513
    :cond_3
    iget-object v4, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 514
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 516
    :try_start_1
    iget-object v4, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->h:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 519
    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid level key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 522
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown format key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 532
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing format separator in string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t parse string (incorrect format): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_7
    return-void
.end method

.method public static format(Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->getDefaultScoreFormatter()Lcom/scoreloop/client/android/core/model/ScoreFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->formatScore(Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->getDefaultScoreFormatter()Lcom/scoreloop/client/android/core/model/ScoreFormatter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->formatScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultScoreFormatter()Lcom/scoreloop/client/android/core/model/ScoreFormatter;
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 546
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->b:Lcom/scoreloop/client/android/core/model/ScoreFormatter;

    return-object v0
.end method

.method public static setDefaultScoreFormatter(Lcom/scoreloop/client/android/core/model/ScoreFormatter;)V
    .locals 0
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 551
    sput-object p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->b:Lcom/scoreloop/client/android/core/model/ScoreFormatter;

    .line 552
    return-void
.end method


# virtual methods
.method public formatScore(Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 243
    sget-object v0, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->DefaultFormat:Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;

    invoke-virtual {p0, p1, v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->formatScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    const/16 v11, 0x66

    const/4 v10, 0x2

    const-wide/16 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 274
    iget-object v0, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/ScoreFormatter$ScoreFormatKey;->a()Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    invoke-direct {p0, v0}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, v0

    .line 283
    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 284
    goto :goto_0

    .line 281
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_0

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getResult()Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "%.0f"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getResult()Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    sget-object v3, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    sget-object v3, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->MinorResultSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    goto :goto_1

    :sswitch_4
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    sget-object v3, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->LevelSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMode()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const-string v1, ""

    goto/16 :goto_1

    :sswitch_6
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    sget-object v3, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->ModeSymbol:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMinorResult()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_5

    move-wide v3, v5

    :goto_2
    invoke-direct {p0, v3, v4}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a(D)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMinorResult()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_2

    :sswitch_8
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getResult()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_6

    move-wide v3, v5

    :goto_3
    invoke-direct {p0, v3, v4}, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->a(D)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getResult()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v10, :cond_7

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMinorResult()Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const-string v1, "%.0f"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Score;->getMinorResult()Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :sswitch_a
    iget-object v1, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->f:Ljava/util/HashMap;

    sget-object v3, Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;->Separator:Lcom/scoreloop/client/android/core/model/ScoreFormatter$a;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_1

    .line 286
    :cond_8
    return-object v2

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_4
        0x4d -> :sswitch_6
        0x51 -> :sswitch_2
        0x52 -> :sswitch_1
        0x53 -> :sswitch_a
        0x54 -> :sswitch_8
        0x6c -> :sswitch_3
        0x6d -> :sswitch_5
        0x71 -> :sswitch_9
        0x72 -> :sswitch_0
        0x74 -> :sswitch_7
    .end sparse-switch
.end method

.method public getDefinedModesNames(II)[Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__2_3_0;
    .end annotation

    .prologue
    .line 225
    new-array v2, p2, [Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_0

    .line 228
    add-int v0, v1, p1

    .line 229
    iget-object v3, p0, Lcom/scoreloop/client/android/core/model/ScoreFormatter;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 227
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 232
    :cond_0
    return-object v2
.end method
