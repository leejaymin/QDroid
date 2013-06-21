.class abstract Lcom/samsungapps/plasma/j;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/samsungapps/plasma/j;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsungapps/plasma/j;->b:Ljava/lang/String;

    iput v1, p0, Lcom/samsungapps/plasma/j;->c:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/j;->a:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/j;->a:I

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/j;->b:Ljava/lang/String;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/j;->c:I

    return-void
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/j;->c:I

    return v0
.end method
