.class public Lgnu/lists/FilterConsumer;
.super Ljava/lang/Object;
.source "FilterConsumer.java"

# interfaces
.implements Lgnu/lists/Consumer;


# instance fields
.field protected attributeType:Ljava/lang/Object;

.field protected base:Lgnu/lists/Consumer;

.field protected inAttribute:Z

.field protected skipping:Z


# direct methods
.method public constructor <init>(Lgnu/lists/Consumer;)V
    .locals 0
    .parameter "base"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    .line 21
    return-void
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .locals 0
    .parameter "c"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->write(I)V

    .line 147
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .locals 2
    .parameter "csq"

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string p1, "null"

    .line 154
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    .line 155
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .locals 1
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 160
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 161
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_1

    .line 163
    if-nez p1, :cond_0

    .line 164
    const-string p1, "null"

    .line 165
    :cond_0
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    .line 167
    :cond_1
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->append(C)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/FilterConsumer;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method protected beforeContent()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public endAttribute()V
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endAttribute()V

    .line 105
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/lists/FilterConsumer;->inAttribute:Z

    .line 106
    return-void
.end method

.method public endDocument()V
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endDocument()V

    .line 79
    :cond_0
    return-void
.end method

.method public endElement()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    .line 91
    :cond_0
    return-void
.end method

.method public ignoring()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->ignoring()Z

    move-result v0

    return v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .locals 1
    .parameter "attrType"

    .prologue
    .line 95
    iput-object p1, p0, Lgnu/lists/FilterConsumer;->attributeType:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/lists/FilterConsumer;->inAttribute:Z

    .line 97
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startAttribute(Ljava/lang/Object;)V

    .line 99
    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0}, Lgnu/lists/Consumer;->startDocument()V

    .line 73
    :cond_0
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 83
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 85
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 29
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 30
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->write(I)V

    .line 32
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter "str"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 138
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 139
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write(Ljava/lang/CharSequence;II)V

    .line 141
    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/lists/FilterConsumer;->write(Ljava/lang/CharSequence;II)V

    .line 130
    return-void
.end method

.method public write([CII)V
    .locals 1
    .parameter "buf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 122
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 123
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2, p3}, Lgnu/lists/Consumer;->write([CII)V

    .line 125
    :cond_0
    return-void
.end method

.method public writeBoolean(Z)V
    .locals 1
    .parameter "v"

    .prologue
    .line 36
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 37
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeBoolean(Z)V

    .line 39
    :cond_0
    return-void
.end method

.method public writeDouble(D)V
    .locals 1
    .parameter "v"

    .prologue
    .line 50
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 51
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeDouble(D)V

    .line 53
    :cond_0
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .parameter "v"

    .prologue
    .line 43
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 44
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeFloat(F)V

    .line 46
    :cond_0
    return-void
.end method

.method public writeInt(I)V
    .locals 1
    .parameter "v"

    .prologue
    .line 57
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 58
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public writeLong(J)V
    .locals 1
    .parameter "v"

    .prologue
    .line 64
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 65
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1, p2}, Lgnu/lists/Consumer;->writeLong(J)V

    .line 67
    :cond_0
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 110
    invoke-virtual {p0}, Lgnu/lists/FilterConsumer;->beforeContent()V

    .line 111
    iget-boolean v0, p0, Lgnu/lists/FilterConsumer;->skipping:Z

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lgnu/lists/FilterConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v0, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method
