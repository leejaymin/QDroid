.class final Lcom/flurry/android/ah;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/flurry/android/an;

.field c:J

.field d:Ljava/util/List;

.field private e:B


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/android/ah;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/flurry/android/ah;->a:Ljava/lang/String;

    iput-byte v2, p0, Lcom/flurry/android/ah;->e:B

    iget-object v0, p0, Lcom/flurry/android/ah;->d:Ljava/util/List;

    new-instance v1, Lcom/flurry/android/x;

    invoke-direct {v1, v2, p2, p3}, Lcom/flurry/android/x;-><init>(BJ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    iget-object v0, p0, Lcom/flurry/android/ah;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/x;

    iget-wide v0, p0, Lcom/flurry/android/x;->b:J

    return-wide v0
.end method

.method final a(Lcom/flurry/android/x;)V
    .locals 1

    iget-object v0, p0, Lcom/flurry/android/ah;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/io/DataOutput;)V
    .locals 3

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/flurry/android/ah;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/flurry/android/ah;->e:B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v0, p0, Lcom/flurry/android/ah;->b:Lcom/flurry/android/an;

    if-nez v0, :cond_0

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    iget-object v0, p0, Lcom/flurry/android/ah;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/android/ah;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/x;

    iget-byte v1, p0, Lcom/flurry/android/x;->a:B

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    iget-wide v1, p0, Lcom/flurry/android/x;->b:J

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/ah;->b:Lcom/flurry/android/an;

    iget-wide v0, v0, Lcom/flurry/android/an;->a:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/android/ah;->b:Lcom/flurry/android/an;

    iget-wide v0, v0, Lcom/flurry/android/an;->e:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v0, p0, Lcom/flurry/android/ah;->b:Lcom/flurry/android/an;

    iget-object v0, v0, Lcom/flurry/android/an;->g:[B

    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{hook: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/flurry/android/ah;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/android/ah;->b:Lcom/flurry/android/an;

    iget-object v2, v2, Lcom/flurry/android/an;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transitions: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flurry/android/ah;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flurry/android/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
