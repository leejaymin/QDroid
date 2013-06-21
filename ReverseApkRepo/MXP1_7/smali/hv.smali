.class Lhv;
.super Ljava/lang/Object;


# static fields
.field private static final 먯꽌:[C


# instance fields
.field public 癤욱븳援:I

.field public 궗:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lhv;->먯꽌:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x3at 0x0t
        0x3dt 0x0t
        0x2ct 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhv;)V
    .locals 0

    invoke-direct {p0}, Lhv;-><init>()V

    return-void
.end method


# virtual methods
.method public 癤욱븳援(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x3a

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x3a

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lhv;->먯꽌:[C

    invoke-static {p1, v4, v3}, Leo;->癤욱븳援(Ljava/lang/CharSequence;[CI)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iput v1, p0, Lhv;->癤욱븳援:I

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhv;->궗:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
