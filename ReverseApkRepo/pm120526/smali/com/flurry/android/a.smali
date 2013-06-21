.class public final Lcom/flurry/android/a;
.super Lcom/flurry/android/q;


# instance fields
.field a:J

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:[B


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/android/q;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/DataInput;)V
    .locals 0

    invoke-direct {p0}, Lcom/flurry/android/q;-><init>()V

    invoke-virtual {p0, p1}, Lcom/flurry/android/a;->a(Ljava/io/DataInput;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/io/DataInput;)V
    .locals 2

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/flurry/android/a;->a:J

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/a;->b:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/a;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/a;->d:Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/android/a;->e:[B

    iget-object v0, p0, Lcom/flurry/android/a;->e:[B

    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    return-void
.end method
