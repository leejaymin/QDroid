.class public final Lcom/inisoft/mediaplayer/ha;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field private static final j:Ljava/util/Comparator;

.field private static synthetic k:[I


# instance fields
.field b:Ljava/lang/String;

.field c:Lcom/inisoft/mediaplayer/hc;

.field d:Z

.field e:I

.field f:I

.field g:I

.field h:[B

.field private i:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1b58

    sput v0, Lcom/inisoft/mediaplayer/ha;->a:I

    new-instance v0, Lcom/inisoft/mediaplayer/hb;

    invoke-direct {v0}, Lcom/inisoft/mediaplayer/hb;-><init>()V

    sput-object v0, Lcom/inisoft/mediaplayer/ha;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Default"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/ha;->d:Z

    iput v1, p0, Lcom/inisoft/mediaplayer/ha;->e:I

    iput v1, p0, Lcom/inisoft/mediaplayer/ha;->f:I

    iput v1, p0, Lcom/inisoft/mediaplayer/ha;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->h:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    iput-object p2, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    iput-boolean v2, p0, Lcom/inisoft/mediaplayer/ha;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/inisoft/mediaplayer/hc;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Default"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/ha;->d:Z

    iput v3, p0, Lcom/inisoft/mediaplayer/ha;->e:I

    iput v3, p0, Lcom/inisoft/mediaplayer/ha;->f:I

    iput v3, p0, Lcom/inisoft/mediaplayer/ha;->g:I

    iput-object v2, p0, Lcom/inisoft/mediaplayer/ha;->h:[B

    iput v3, p0, Lcom/inisoft/mediaplayer/ha;->e:I

    iput v3, p0, Lcom/inisoft/mediaplayer/ha;->f:I

    iput v3, p0, Lcom/inisoft/mediaplayer/ha;->g:I

    iput-object p1, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    iput-object p3, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/inisoft/mediaplayer/ha;->d:Z

    invoke-static {}, Lcom/inisoft/mediaplayer/ha;->d()[I

    move-result-object v0

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/hc;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_2

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Start"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    iput v1, p0, Lcom/inisoft/mediaplayer/ha;->e:I

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[Events]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "End"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5

    iput v1, p0, Lcom/inisoft/mediaplayer/ha;->f:I

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iput v1, p0, Lcom/inisoft/mediaplayer/ha;->g:I

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Z)I
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "-->"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x2

    aget-object v0, v0, v5

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    aget-object v0, v0, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Lcom/inisoft/mediaplayer/hc;)Lcom/inisoft/mediaplayer/hc;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    :try_start_0
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v3, :cond_1

    :cond_0
    :goto_1
    sget-object v1, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_7

    :goto_2
    return-object p1

    :cond_1
    :try_start_1
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[script info]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    goto :goto_1

    :cond_2
    const-string v4, "\ufeff[events]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    goto :goto_1

    :cond_3
    const-string v4, "<sami>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    goto :goto_1

    :cond_4
    const-string v4, "<sync start="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    goto :goto_1

    :cond_5
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    :try_start_2
    invoke-static {v3, v4}, Lcom/inisoft/mediaplayer/ha;->a(Ljava/lang/String;Z)I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/inisoft/mediaplayer/ha;->a(Ljava/lang/String;Z)I

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_6
    const/16 v3, 0x1e

    if-gt v1, v3, :cond_0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_7
    move-object p1, v0

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v1

    move-object v3, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    :goto_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    return-object v2

    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 16

    const-string v6, "default"

    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v2, "<!--"

    const-string v3, "-->"

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    :goto_0
    array-length v8, v7

    if-lt v2, v8, :cond_3

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v2, ""

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v7, "<p class"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    const-string v8, "default"

    invoke-virtual {v7, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    const/4 v1, 0x0

    move v7, v1

    :goto_2
    array-length v1, v10

    if-lt v7, v1, :cond_6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_2

    if-eqz v5, :cond_1

    sget v2, Lcom/inisoft/mediaplayer/ha;->a:I

    add-int/2addr v2, v5

    if-ge v2, v4, :cond_1

    new-instance v2, Lcom/inisoft/mediaplayer/gz;

    sget v7, Lcom/inisoft/mediaplayer/ha;->a:I

    add-int/2addr v5, v7

    const-string v7, ""

    invoke-direct {v2, v5, v7}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v2, Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v2, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-void

    :cond_3
    aget-object v8, v7, v2

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v7, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v7, v2

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    const-string v8, "="

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    const-string v8, ">"

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->clear()V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v8, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_6
    aget-object v1, v10, v7

    invoke-static {v1}, Lcom/inisoft/mediaplayer/ha;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const/4 v1, 0x0

    move v9, v1

    :goto_5
    array-length v1, v11

    if-lt v9, v1, :cond_8

    :cond_7
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_2

    :cond_8
    aget-object v1, v11, v9

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v8, "<"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    aget-object v1, v11, v9

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v8, "\""

    const-string v12, ""

    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "\'"

    const-string v12, ""

    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "<sync start"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_19

    if-eqz v5, :cond_9

    sget v12, Lcom/inisoft/mediaplayer/ha;->a:I

    add-int/2addr v12, v5

    if-ge v12, v4, :cond_9

    new-instance v12, Lcom/inisoft/mediaplayer/gz;

    sget v13, Lcom/inisoft/mediaplayer/ha;->a:I

    add-int/2addr v5, v13

    const/4 v13, 0x0

    invoke-direct {v12, v5, v13}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ""

    new-instance v5, Lcom/inisoft/mediaplayer/gz;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    move v5, v4

    :goto_6
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v8, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :cond_a
    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :goto_7
    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v5

    move-object v5, v6

    :goto_8
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move-object v6, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_5

    :catch_1
    move-exception v2

    add-int/lit16 v3, v4, 0x1f4

    goto :goto_7

    :cond_c
    const-string v1, "<p class"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_e

    :try_start_3
    const-string v1, "="

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v12, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-nez v1, :cond_18

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v8, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto :goto_8

    :cond_d
    const-string v6, "default"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :catch_2
    move-exception v1

    move-object v1, v6

    move-object v15, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v1

    move-object v1, v15

    goto :goto_8

    :cond_e
    :try_start_4
    const-string v1, "<smi>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<sami>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "</sami>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<head>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "</head>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<title>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "</title>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<body>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "</body>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<style"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "</style>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<p>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "<font"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    if-eqz v1, :cond_12

    :try_start_5
    const-string v1, "\""

    const-string v12, ""

    invoke-virtual {v8, v1, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "color="

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_18

    const-string v12, " "

    add-int/lit8 v13, v8, 0x6

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v12

    if-lez v12, :cond_10

    add-int/lit8 v13, v8, 0x6

    if-le v12, v13, :cond_10

    add-int/lit8 v8, v8, 0x6

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :goto_a
    invoke-static {v8}, Lcom/inisoft/mediaplayer/cr;->a(Ljava/lang/String;)Lcom/inisoft/mediaplayer/cr;

    move-result-object v12

    if-eqz v12, :cond_11

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "#"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/inisoft/mediaplayer/cr;->a()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    :goto_b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "</font>"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v8, v8, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    :cond_11
    const-string v12, "^[0-9]*"

    invoke-static {v12, v8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    const-string v12, "#"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "#"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v1

    goto :goto_b

    :catch_3
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_8

    :cond_12
    :try_start_6
    const-string v1, "<br>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "</p>"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    const-string v1, "<br>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_15

    const-string v1, ""

    :goto_c
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_8

    :cond_15
    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_16

    const-string v1, ""

    goto :goto_c

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "</"

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_17
    aget-object v1, v11, v9

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_18
    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    goto/16 :goto_8

    :cond_19
    move-object v1, v2

    goto/16 :goto_6
.end method

.method private c(Ljava/lang/String;)Lcom/inisoft/mediaplayer/gz;
    .locals 11

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v1, ""

    const-string v0, ""

    const-string v4, "Dialogue:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v4, v3

    move v5, v3

    move-object v3, v1

    move v1, v2

    :goto_0
    array-length v6, v7

    if-lt v1, v6, :cond_0

    new-instance v1, Lcom/inisoft/mediaplayer/gz;

    sub-int v2, v4, v5

    invoke-direct {v1, v2, v0}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_0
    aget-object v6, v7, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move v6, v5

    move v5, v4

    move v4, v2

    :goto_1
    array-length v9, v8

    if-lt v4, v9, :cond_2

    :goto_2
    const-string v4, "\n"

    const-string v8, "<br>"

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<br>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    goto :goto_0

    :cond_2
    iget v9, p0, Lcom/inisoft/mediaplayer/ha;->e:I

    if-ne v4, v9, :cond_4

    aget-object v6, v8, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/inisoft/mediaplayer/ha;->d(Ljava/lang/String;)I

    move-result v6

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget v9, p0, Lcom/inisoft/mediaplayer/ha;->f:I

    if-ne v4, v9, :cond_5

    aget-object v5, v8, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inisoft/mediaplayer/ha;->d(Ljava/lang/String;)I

    move-result v5

    goto :goto_3

    :cond_5
    iget v9, p0, Lcom/inisoft/mediaplayer/ha;->g:I

    if-ne v4, v9, :cond_3

    :try_start_0
    const-string v4, ""

    iget v3, p0, Lcom/inisoft/mediaplayer/ha;->g:I

    move v10, v3

    move-object v3, v4

    move v4, v10

    :goto_4
    array-length v9, v8

    if-lt v4, v9, :cond_6

    invoke-static {v3}, Lcom/inisoft/mediaplayer/ha;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inisoft/mediaplayer/ha;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v8, v4

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    if-eq v4, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :catch_0
    move-exception v3

    const-string v3, ""

    goto/16 :goto_2
.end method

.method private static d(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    const/4 v3, 0x2

    aget-object v0, v0, v3

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    aget-object v0, v0, v5

    const-string v4, "[^0-9.]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    return v0
.end method

.method private static synthetic d()[I
    .locals 3

    sget-object v0, Lcom/inisoft/mediaplayer/ha;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inisoft/mediaplayer/hc;->values()[Lcom/inisoft/mediaplayer/hc;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hc;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inisoft/mediaplayer/hc;->e:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hc;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hc;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hc;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v1}, Lcom/inisoft/mediaplayer/hc;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/inisoft/mediaplayer/ha;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x5c

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x68

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_5

    move v2, v1

    goto :goto_1

    :cond_5
    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "m "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, "[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    aget-object v1, v0, v1

    const-string v2, "[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    aget-object v1, v0, v1

    const-string v2, "[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    aget-object v1, v0, v1

    const-string v2, "[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const-string v1, "[0-9]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method final a(I)Ljava/util/Vector;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    sget-object v1, Lcom/inisoft/mediaplayer/ha;->j:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([B)Z
    .locals 14

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    iget-boolean v0, p0, Lcom/inisoft/mediaplayer/ha;->d:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x2

    :cond_3
    :try_start_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p1

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    invoke-static {v1, v0}, Lcom/inisoft/mediaplayer/ha;->a(Ljava/lang/String;Lcom/inisoft/mediaplayer/hc;)Lcom/inisoft/mediaplayer/hc;

    move-result-object v0

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inisoft/mediaplayer/ha;->d:Z

    :cond_4
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    const-string v2, "default"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->a:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_5
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->b:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_8

    :try_start_1
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    const-string v3, "UTF-8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/ha;->b(Ljava/lang/String;)V

    :cond_6
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p1

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->c:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_f

    :try_start_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v13

    :goto_4
    array-length v4, v7

    if-lt v2, v4, :cond_9

    invoke-virtual {v8}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Lcom/inisoft/mediaplayer/ha;->j:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    aget-object v4, v7, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    :try_start_4
    aget-object v4, v7, v2

    const-string v5, "[^0-9.]"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v4, 0x1

    add-int/lit8 v5, v2, 0x1

    :try_start_5
    aget-object v5, v7, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/inisoft/mediaplayer/ha;->a(Ljava/lang/String;Z)I

    move-result v3

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v7, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/inisoft/mediaplayer/ha;->a(Ljava/lang/String;Z)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v1

    move v13, v4

    move v4, v3

    move v3, v1

    move v1, v13

    :goto_6
    const-string v6, ""

    const/4 v5, 0x0

    :goto_7
    add-int v9, v2, v5

    add-int/lit8 v9, v9, 0x2

    array-length v10, v7

    if-ge v9, v10, :cond_b

    add-int v9, v2, v5

    add-int/lit8 v9, v9, 0x2

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    if-nez v5, :cond_b

    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v6, v2, v5

    add-int/lit8 v6, v6, 0x2

    aget-object v6, v7, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\n"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :catch_2
    move-exception v4

    move v13, v2

    move v2, v1

    move v1, v13

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v13, v1

    move v1, v2

    move v2, v13

    goto/16 :goto_4

    :catch_3
    move-exception v4

    move v4, v3

    const/4 v3, 0x0

    move v13, v3

    move v3, v1

    move v1, v13

    goto :goto_6

    :cond_b
    invoke-static {v6}, Lcom/inisoft/mediaplayer/ha;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<br>"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v8, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int v1, v2, v5

    add-int/lit8 v2, v1, 0x2

    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_8

    :cond_d
    const-string v1, "\n"

    const-string v9, "<br>"

    invoke-virtual {v6, v1, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/inisoft/mediaplayer/gz;

    invoke-direct {v4, v3, v1}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_f
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    sget-object v1, Lcom/inisoft/mediaplayer/hc;->d:Lcom/inisoft/mediaplayer/hc;

    if-ne v0, v1, :cond_6

    :try_start_6
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_4

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_a
    array-length v6, v9

    if-lt v1, v6, :cond_12

    :goto_b
    if-eqz v2, :cond_10

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    :goto_c
    array-length v7, v6

    if-lt v2, v7, :cond_14

    :cond_10
    move v6, v3

    move v7, v4

    move v8, v5

    const/4 v2, -0x1

    if-eq v8, v2, :cond_11

    const/4 v2, -0x1

    if-eq v7, v2, :cond_11

    const/4 v2, -0x1

    if-ne v6, v2, :cond_18

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_12
    aget-object v6, v9, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    aget-object v6, v9, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[Events]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_13

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v9, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    aget-object v7, v6, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Start"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_16

    move v5, v2

    :cond_15
    :goto_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v10, "End"

    invoke-virtual {v8, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_17

    move v4, v2

    goto :goto_d

    :cond_17
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Text"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_15

    move v3, v2

    goto :goto_d

    :cond_18
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    add-int/lit8 v1, v1, 0x2

    move v4, v1

    :goto_e
    array-length v1, v9

    if-lt v4, v1, :cond_19

    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_23

    sget-object v1, Lcom/inisoft/mediaplayer/ha;->j:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_3

    :cond_19
    const/4 v3, -0x1

    const/4 v2, -0x1

    const-string v5, ""

    aget-object v1, v9, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v11, ""

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    aget-object v1, v9, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v11, "Dialogue"

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    aget-object v1, v9, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x0

    :goto_10
    array-length v12, v11

    if-lt v1, v12, :cond_1c

    move-object v1, v5

    :goto_11
    if-ltz v3, :cond_1a

    const-string v5, "\n"

    const-string v11, "<br>"

    invoke-virtual {v1, v5, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<br>"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    :goto_12
    if-ltz v2, :cond_1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v10, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_e

    :cond_1c
    if-ne v1, v8, :cond_1e

    aget-object v3, v11, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inisoft/mediaplayer/ha;->d(Ljava/lang/String;)I

    move-result v3

    :cond_1d
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    if-ne v1, v7, :cond_1f

    aget-object v2, v11, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inisoft/mediaplayer/ha;->d(Ljava/lang/String;)I

    move-result v2

    goto :goto_13

    :cond_1f
    if-ne v1, v6, :cond_1d

    :try_start_7
    const-string v1, ""

    move v5, v6

    :goto_14
    array-length v12, v11

    if-lt v5, v12, :cond_20

    invoke-static {v1}, Lcom/inisoft/mediaplayer/ha;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inisoft/mediaplayer/ha;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_20
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v11, v5

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    if-eq v5, v12, :cond_21

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-result-object v1

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :catch_5
    move-exception v1

    const-string v1, ""

    goto/16 :goto_11

    :cond_22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_23
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Lcom/inisoft/mediaplayer/gz;

    invoke-direct {v4, v3, v1}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :catch_6
    move-exception v0

    goto/16 :goto_0

    :cond_24
    move v13, v2

    move v2, v1

    move v1, v13

    goto/16 :goto_8
.end method

.method public final b(I)I
    .locals 4

    new-instance v2, Ljava/util/Vector;

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->i:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move v1, p1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ko"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "kr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final b([B)Lcom/inisoft/mediaplayer/gz;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    const-string v2, "Default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {}, Lcom/inisoft/mediaplayer/ha;->d()[I

    move-result-object v2

    iget-object v3, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    invoke-virtual {v3}, Lcom/inisoft/mediaplayer/hc;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string v2, "\n"

    const-string v3, "<br>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/inisoft/mediaplayer/gz;

    sget v3, Lcom/inisoft/mediaplayer/ha;->a:I

    invoke-direct {v0, v3, v2}, Lcom/inisoft/mediaplayer/gz;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/inisoft/mediaplayer/ha;->c(Ljava/lang/String;)Lcom/inisoft/mediaplayer/gz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Lcom/inisoft/mediaplayer/hc;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->c:Lcom/inisoft/mediaplayer/hc;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inisoft/mediaplayer/ha;->b:Ljava/lang/String;

    return-object v0
.end method
