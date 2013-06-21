.class Lia;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/Html$TagHandler;


# instance fields
.field 癤욱븳援:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lia;)V
    .locals 0

    invoke-direct {p0}, Lia;-><init>()V

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x21

    const/16 v3, 0x12

    const/4 v1, 0x0

    const-string v0, "ruby"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lia;->癤욱븳援:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lic;

    invoke-direct {v0, v2}, Lic;-><init>(Lic;)V

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p3, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lic;

    invoke-interface {p3, v0, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lic;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {p3, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p3, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p3, v3, v4, v5, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "rt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lia;->癤욱븳援:I

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    new-instance v0, Lib;

    invoke-direct {v0, v2}, Lib;-><init>(Lib;)V

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p3, v0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lib;

    invoke-interface {p3, v0, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lib;

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-interface {p3, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p3, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p3, v3, v4, v5, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    const/16 v0, 0x28

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    goto :goto_0

    :cond_5
    const/16 v0, 0x29

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    goto :goto_0
.end method
