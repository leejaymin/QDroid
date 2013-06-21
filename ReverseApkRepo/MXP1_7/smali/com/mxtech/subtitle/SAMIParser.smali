.class public Lcom/mxtech/subtitle/SAMIParser;
.super Ljava/lang/Object;


# static fields
.field private static final 癤욱븳援:Ljava/lang/String;


# instance fields
.field private ㅼ꽑嫄:I

.field private final 궗:Ljava/util/Map;

.field private 먯꽌:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lhg;->ㅼ꽑嫄:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".SAMI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mxtech/subtitle/SAMIParser;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    return-void
.end method

.method private append(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lho;

    if-nez v0, :cond_0

    new-instance v0, Lho;

    iget v1, p0, Lcom/mxtech/subtitle/SAMIParser;->ㅼ꽑嫄:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mxtech/subtitle/SAMIParser;->ㅼ꽑嫄:I

    iget-object v2, p0, Lcom/mxtech/subtitle/SAMIParser;->먯꽌:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lho;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2, p3}, Lho;->癤욱븳援(ILjava/lang/String;)V

    return-void
.end method

.method private parseCSS(Ljava/lang/String;)V
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    const-string v0, "\\.([-_A-Za-z]+)\\s*\\{([^}]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "([-_A-Za-z]+)\\s*\\:\\s*([^; \\t\\r\\n]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    :goto_0
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v8, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v4, v6

    move-object v3, v6

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    new-instance v0, Lho;

    iget v1, p0, Lcom/mxtech/subtitle/SAMIParser;->ㅼ꽑嫄:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mxtech/subtitle/SAMIParser;->ㅼ꽑嫄:I

    iget-object v2, p0, Lcom/mxtech/subtitle/SAMIParser;->먯꽌:Landroid/net/Uri;

    invoke-direct/range {v0 .. v5}, Lho;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v2, "lang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public native parse(Ljava/lang/String;)V
.end method

.method public 癤욱븳援(Ljava/lang/String;Landroid/net/Uri;)[Lhg;
    .locals 2

    iput-object p2, p0, Lcom/mxtech/subtitle/SAMIParser;->먯꽌:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/mxtech/subtitle/SAMIParser;->parse(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/zip/DataFormatException;

    invoke-direct {v0}, Ljava/util/zip/DataFormatException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/mxtech/subtitle/SAMIParser;->궗:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lhg;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhg;

    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lho;

    invoke-virtual {v0}, Lho;->몃Ъ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method
