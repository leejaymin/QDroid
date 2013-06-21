.class public Lcom/sun/activation/registries/MailcapTokenizer;
.super Ljava/lang/Object;


# static fields
.field public static final EOI_TOKEN:I = 0x5

.field public static final EQUALS_TOKEN:I = 0x3d

.field public static final SEMICOLON_TOKEN:I = 0x3b

.field public static final SLASH_TOKEN:I = 0x2f

.field public static final START_TOKEN:I = 0x1

.field public static final STRING_TOKEN:I = 0x2

.field public static final UNKNOWN_TOKEN:I


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->a:Ljava/lang/String;

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->f:Z

    const/16 v0, 0x3b

    iput-char v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->g:C

    return-void
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    :goto_0
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->c:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->a:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/activation/registries/MailcapTokenizer;->a(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->a:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    return-void

    :cond_1
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    goto :goto_0
.end method

.method private static a(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :sswitch_0
    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
    .end sparse-switch
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    iget v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->c:I

    if-ge v3, v4, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->a:Ljava/lang/String;

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->a:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->g:C

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x5c

    if-eq v1, v5, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static nameForToken(I)Ljava/lang/String;
    .locals 1

    const-string v0, "really unknown"

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "unknown"

    goto :goto_0

    :sswitch_1
    const-string v0, "start"

    goto :goto_0

    :sswitch_2
    const-string v0, "string"

    goto :goto_0

    :sswitch_3
    const-string v0, "EOI"

    goto :goto_0

    :sswitch_4
    const-string v0, "\'/\'"

    goto :goto_0

    :sswitch_5
    const-string v0, "\';\'"

    goto :goto_0

    :sswitch_6
    const-string v0, "\'=\'"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x2f -> :sswitch_4
        0x3b -> :sswitch_5
        0x3d -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public getCurrentToken()I
    .locals 1

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    return v0
.end method

.method public getCurrentTokenValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public nextToken()I
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x3d

    const/16 v3, 0x3b

    const/4 v2, 0x5

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->c:I

    if-ge v0, v1, :cond_9

    :goto_0
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->c:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->a:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->c:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->a:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->f:Z

    if-eqz v1, :cond_4

    if-eq v0, v3, :cond_1

    if-ne v0, v4, :cond_3

    :cond_1
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    :goto_1
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    return v0

    :cond_2
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->b()V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->a(C)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->a()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_6

    if-ne v0, v4, :cond_7

    :cond_6
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->b:I

    goto :goto_1

    :cond_8
    iput v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    iput-object v5, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iput v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->d:I

    iput-object v5, p0, Lcom/sun/activation/registries/MailcapTokenizer;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public setIsAutoquoting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->f:Z

    return-void
.end method
