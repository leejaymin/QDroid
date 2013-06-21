.class final Lcom/samsungapps/plasma/l;
.super Lcom/samsungapps/plasma/j;


# instance fields
.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsungapps/plasma/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsungapps/plasma/l;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsungapps/plasma/l;->e:Z

    return-void
.end method


# virtual methods
.method a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsungapps/plasma/l;->d:Ljava/util/HashMap;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsungapps/plasma/l;->e:Z

    return-void
.end method

.method d()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsungapps/plasma/l;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsungapps/plasma/l;->e:Z

    return v0
.end method
