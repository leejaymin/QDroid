.class Lorg/mozilla/javascript/regexp/SubString;
.super Ljava/lang/Object;
.source "SubString.java"


# static fields
.field static final emptySubString:Lorg/mozilla/javascript/regexp/SubString;


# instance fields
.field charArray:[C

.field index:I

.field length:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 51
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3
    .parameter "source"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 57
    iput p3, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 58
    new-array v1, p3, [C

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    .line 59
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 60
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    add-int v2, p2, v0

    aget-char v2, p1, v2

    aput-char v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    iget v2, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v3, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method
