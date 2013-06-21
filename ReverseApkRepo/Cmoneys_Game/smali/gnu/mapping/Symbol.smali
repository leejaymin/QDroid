.class public Lgnu/mapping/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final FUNCTION:Lgnu/mapping/Symbol;

.field public static final PLIST:Lgnu/mapping/Symbol;


# instance fields
.field protected name:Ljava/lang/String;

.field namespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    const-string v0, "(function)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->FUNCTION:Lgnu/mapping/Symbol;

    .line 281
    const-string v0, "(property-list)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .locals 0
    .parameter "ns"
    .parameter "name"

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 213
    return-void
.end method

.method public static equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .locals 6
    .parameter "sym1"
    .parameter "sym2"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 241
    :goto_0
    return v2

    .line 227
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v2, v4

    .line 228
    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    iget-object v3, p1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_5

    .line 235
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 236
    .local v0, namespace1:Lgnu/mapping/Namespace;
    iget-object v1, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 237
    .local v1, namespace2:Lgnu/mapping/Namespace;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_3

    iget-object v2, v0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    iget-object v3, v1, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_4

    :cond_3
    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0

    .end local v0           #namespace1:Lgnu/mapping/Namespace;
    .end local v1           #namespace2:Lgnu/mapping/Namespace;
    :cond_5
    move v2, v4

    .line 241
    goto :goto_0
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 116
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Lgnu/mapping/Namespace;->getInstance(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    move-object v0, v1

    .line 119
    .local v0, ns:Lgnu/mapping/Namespace;
    :goto_0
    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 120
    :cond_0
    invoke-static {p1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 121
    :goto_1
    return-object v1

    .line 116
    .end local v0           #ns:Lgnu/mapping/Namespace;
    .restart local p0
    :cond_1
    check-cast p0, Lgnu/mapping/Namespace;

    move-object v0, p0

    goto :goto_0

    .line 121
    .end local p0
    .restart local v0       #ns:Lgnu/mapping/Namespace;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    goto :goto_1
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "uri"
    .parameter "name"
    .parameter "prefix"

    .prologue
    .line 105
    invoke-static {p0, p2}, Lgnu/mapping/Namespace;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "name"

    .prologue
    .line 197
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "local"
    .parameter "prefix"

    .prologue
    .line 169
    invoke-static {p1}, Lgnu/mapping/Namespace;->makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .locals 6
    .parameter "symbol"

    .prologue
    const/4 v4, 0x0

    const-string v5, ""

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_1

    .line 141
    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 142
    .local v1, rbrace:I
    if-gtz v1, :cond_0

    .line 144
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "missing \'}\' in property name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v2, v3, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 156
    .end local v1           #rbrace:I
    :goto_0
    return-object v2

    .line 148
    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 149
    .local v0, colon:I
    if-lez v0, :cond_2

    .line 151
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    goto :goto_0

    .line 156
    :cond_2
    const-string v2, ""

    const-string v2, ""

    invoke-static {v5, p0, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 217
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v1, v0

    .line 218
    .local v1, other:Lgnu/mapping/Symbol;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 219
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "comparing Symbols in different namespaces"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 249
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_0

    check-cast p1, Lgnu/mapping/Symbol;

    .end local p1
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public final getLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Lgnu/mapping/Namespace;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 55
    .local v0, ns:Lgnu/mapping/Namespace;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 66
    .local v0, ns:Lgnu/mapping/Namespace;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    goto :goto_0
.end method

.method public final hasEmptyNamespace()Z
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 74
    .local v0, ns:Lgnu/mapping/Namespace;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, nsname:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .end local v1           #nsname:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .restart local v1       #nsname:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public matches(Lgnu/mapping/EnvironmentKey;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 44
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-static {v0, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .locals 1
    .parameter "symbol"
    .parameter "property"

    .prologue
    .line 48
    invoke-static {p1, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 320
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0
.end method

.method public final setNamespace(Lgnu/mapping/Namespace;)V
    .locals 0
    .parameter "ns"

    .prologue
    .line 265
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, uri:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 288
    :cond_0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    .line 303
    :goto_0
    return-object v3

    .line 289
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v1, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, prefix:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 293
    :cond_2
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 302
    :goto_1
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 309
    .local v0, ns:Lgnu/mapping/Namespace;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 311
    return-void
.end method
