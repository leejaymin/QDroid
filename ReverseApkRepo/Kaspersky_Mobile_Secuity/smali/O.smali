.class final LO;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO;->a:Ljava/lang/String;

    iput-wide p2, p0, LO;->b:J

    iput p4, p0, LO;->c:I

    iput p5, p0, LO;->d:I

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LO;->a:Ljava/lang/String;

    return-object v0
.end method

.method final b()J
    .locals 2

    iget-wide v0, p0, LO;->b:J

    return-wide v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, LO;->c:I

    return v0
.end method

.method final d()I
    .locals 1

    iget v0, p0, LO;->d:I

    return v0
.end method
