.class final Lcom/thinkyeah/smartlock/o;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/thinkyeah/smartlock/n;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/n;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/o;->c:Lcom/thinkyeah/smartlock/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/n;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/o;-><init>(Lcom/thinkyeah/smartlock/n;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/thinkyeah/smartlock/o;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/thinkyeah/smartlock/o;

    iget-object v2, p0, Lcom/thinkyeah/smartlock/o;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/thinkyeah/smartlock/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/thinkyeah/smartlock/o;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/thinkyeah/smartlock/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/o;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
