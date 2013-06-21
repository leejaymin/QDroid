.class final Lorg/cocos2d/e/h;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field static final synthetic b:Z


# instance fields
.field final synthetic a:Lorg/cocos2d/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/e/h;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/cocos2d/e/g;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-boolean v0, v0, Lorg/cocos2d/e/g;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v0, v0, Lorg/cocos2d/e/g;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v0, v0, Lorg/cocos2d/e/g;->d:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput-boolean v1, v0, Lorg/cocos2d/e/g;->c:Z

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v0, v0, Lorg/cocos2d/e/g;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/f;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/cocos2d/m/a;->a(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    sget-object v0, Lorg/cocos2d/e/g;->a:Ljava/lang/String;

    const-string v1, "cocos2d: TiledMap: decode data error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/f;->c:Ljava/nio/IntBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, v0, Lorg/cocos2d/e/g;->b:Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lorg/cocos2d/e/g;->a:Ljava/lang/String;

    const-string v1, "cocos2d: TiledMap: inflate data error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v0, "map"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v1, v0, Lorg/cocos2d/e/g;->e:I

    goto :goto_1

    :cond_3
    const-string v0, "layer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v1, v0, Lorg/cocos2d/e/g;->e:I

    goto :goto_1

    :cond_4
    const-string v0, "objectgroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v1, v0, Lorg/cocos2d/e/g;->e:I

    goto :goto_1

    :cond_5
    const-string v0, "object"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v1, v0, Lorg/cocos2d/e/g;->e:I

    goto :goto_1
.end method

.method public final error(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    sget-object v0, Lorg/cocos2d/e/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    sget-object v0, Lorg/cocos2d/e/g;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startDocument()V
    .locals 0

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "map"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "version"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/cocos2d/e/g;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cocos2d: TMXFormat: Unsupported TMX version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "orientation"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "orthogonal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v5, v0, Lorg/cocos2d/e/g;->h:I

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    const-string v1, "width"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const-string v2, "height"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/g;->i:Lorg/cocos2d/l/g;

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    const-string v1, "tilewidth"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const-string v2, "tileheight"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/g;->j:Lorg/cocos2d/l/g;

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v4, v0, Lorg/cocos2d/e/g;->e:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "isometric"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v6, v0, Lorg/cocos2d/e/g;->h:I

    goto :goto_0

    :cond_3
    const-string v1, "hexagonal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v4, v0, Lorg/cocos2d/e/g;->h:I

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/cocos2d/e/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cocos2d: TMXFomat: Unsupported orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string v0, "tileset"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "source"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->g:Ljava/lang/String;

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->g:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    invoke-static {v1, v0}, Lorg/cocos2d/e/g;->a(Lorg/cocos2d/e/g;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/cocos2d/e/k;

    invoke-direct {v0}, Lorg/cocos2d/e/k;-><init>()V

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/k;->a:Ljava/lang/String;

    const-string v1, "firstgid"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lorg/cocos2d/e/k;->b:I

    const-string v1, "spacing"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v5

    :goto_2
    iput v1, v0, Lorg/cocos2d/e/k;->d:I

    const-string v1, "margin"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v5

    :goto_3
    iput v1, v0, Lorg/cocos2d/e/k;->e:I

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v1

    const-string v2, "tilewidth"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/cocos2d/l/g;->a:F

    const-string v2, "tileheight"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/cocos2d/l/g;->b:F

    iput-object v1, v0, Lorg/cocos2d/e/k;->c:Lorg/cocos2d/l/g;

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    :cond_9
    const-string v0, "tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v0, v0, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/k;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v0, v0, Lorg/cocos2d/e/k;->b:I

    const-string v3, "id"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v2, Lorg/cocos2d/e/g;->f:I

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v0, v0, Lorg/cocos2d/e/g;->o:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->f:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    const/4 v1, 0x5

    iput v1, v0, Lorg/cocos2d/e/g;->e:I

    goto/16 :goto_1

    :cond_a
    const-string v0, "layer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lorg/cocos2d/e/f;

    invoke-direct {v0}, Lorg/cocos2d/e/f;-><init>()V

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/f;->a:Ljava/lang/String;

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/cocos2d/l/g;->a:F

    const-string v2, "height"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lorg/cocos2d/l/g;->b:F

    iput-object v1, v0, Lorg/cocos2d/e/f;->b:Lorg/cocos2d/l/g;

    const-string v1, "visible"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v5

    :goto_4
    iput-boolean v1, v0, Lorg/cocos2d/e/f;->d:Z

    const-string v1, "opacity"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    const/high16 v1, 0x437f

    const-string v2, "opacity"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lorg/cocos2d/e/f;->e:I

    :goto_5
    :try_start_0
    const-string v1, "x"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/f;->j:Lorg/cocos2d/l/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v6, v0, Lorg/cocos2d/e/g;->e:I

    goto/16 :goto_1

    :cond_b
    move v1, v4

    goto :goto_4

    :cond_c
    const/16 v1, 0xff

    iput v1, v0, Lorg/cocos2d/e/f;->e:I

    goto :goto_5

    :catch_0
    move-exception v1

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/f;->j:Lorg/cocos2d/l/e;

    goto :goto_6

    :cond_d
    const-string v0, "objectgroup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lorg/cocos2d/e/i;

    invoke-direct {v0}, Lorg/cocos2d/e/i;-><init>()V

    const-string v1, "name"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/i;->a:Ljava/lang/String;

    invoke-static {}, Lorg/cocos2d/l/e;->b()Lorg/cocos2d/l/e;

    move-result-object v1

    :try_start_1
    const-string v2, "x"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v3, v3, Lorg/cocos2d/e/g;->j:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    mul-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/l/e;->a:F

    const-string v2, "y"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v3, v3, Lorg/cocos2d/e/g;->j:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v2, v3

    iput v2, v1, Lorg/cocos2d/l/e;->b:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    iput-object v1, v0, Lorg/cocos2d/e/i;->b:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v7, v0, Lorg/cocos2d/e/g;->e:I

    goto/16 :goto_1

    :cond_e
    const-string v0, "image"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v0, v0, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/k;

    const-string v1, "source"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->g:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v3, v3, Lorg/cocos2d/e/g;->g:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/e/k;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    iput-object v1, v0, Lorg/cocos2d/e/k;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string v0, "data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "encoding"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "compression"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "base64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v0, Lorg/cocos2d/e/g;->d:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lorg/cocos2d/e/g;->d:I

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput-boolean v4, v0, Lorg/cocos2d/e/g;->c:Z

    sget-boolean v0, Lorg/cocos2d/e/h;->b:Z

    if-nez v0, :cond_11

    if-eqz v1, :cond_11

    const-string v0, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMX: unsupported compression method"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_11
    const-string v0, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v1, v0, Lorg/cocos2d/e/g;->d:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/cocos2d/e/g;->d:I

    :cond_12
    sget-boolean v0, Lorg/cocos2d/e/h;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v0, v0, Lorg/cocos2d/e/g;->d:I

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMX tile map: Only base64 and/or gzip maps are supported"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_13
    const-string v0, "object"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v0, v0, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v1, v1, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/i;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "name"

    const-string v3, "name"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    const-string v3, "type"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "x"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/cocos2d/e/i;->b:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->a:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "x"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "y"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/cocos2d/e/i;->b:Lorg/cocos2d/l/e;

    iget v3, v3, Lorg/cocos2d/l/e;->b:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v3, v3, Lorg/cocos2d/e/g;->i:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->b:F

    iget-object v4, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v4, v4, Lorg/cocos2d/e/g;->j:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->b:F

    mul-float/2addr v3, v4

    int-to-float v2, v2

    sub-float v2, v3, v2

    const-string v3, "height"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    const-string v3, "y"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "width"

    const-string v3, "width"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    const-string v3, "height"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lorg/cocos2d/e/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iput v8, v0, Lorg/cocos2d/e/g;->e:I

    goto/16 :goto_1

    :cond_14
    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->e:I

    if-nez v2, :cond_15

    sget-object v2, Lorg/cocos2d/e/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TMX tile map: Parent element is unsupported. Cannot add property named \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' with value \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->e:I

    if-ne v2, v4, :cond_16

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_16
    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->e:I

    if-ne v2, v6, :cond_17

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->k:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v3, v3, Lorg/cocos2d/e/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/e/f;

    iget-object v2, p0, Lorg/cocos2d/e/f;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_17
    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->e:I

    if-ne v2, v7, :cond_18

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v3, v3, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/e/i;

    iget-object v2, p0, Lorg/cocos2d/e/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_18
    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->e:I

    if-ne v2, v8, :cond_19

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v3, v3, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/e/i;

    iget-object v2, p0, Lorg/cocos2d/e/i;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/cocos2d/e/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_19
    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v2, v2, Lorg/cocos2d/e/g;->e:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget-object v2, v2, Lorg/cocos2d/e/g;->o:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/cocos2d/e/h;->a:Lorg/cocos2d/e/g;

    iget v3, v3, Lorg/cocos2d/e/g;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto/16 :goto_7
.end method
