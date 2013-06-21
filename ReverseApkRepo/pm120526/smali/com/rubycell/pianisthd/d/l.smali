.class public final Lcom/rubycell/pianisthd/d/l;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:Lcom/rubycell/pianisthd/c/a;

.field static c:I

.field static d:Z

.field static e:Ljava/lang/String;

.field static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/l;->d:Z

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/rubycell/pianisthd/d/l;->b:Lcom/rubycell/pianisthd/c/a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/rubycell/pianisthd/d/l;->d:Z

    return-void
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/rubycell/pianisthd/d/l;->a:I

    return-void
.end method

.method public static a(Lcom/rubycell/pianisthd/c/a;)V
    .locals 0

    sput-object p0, Lcom/rubycell/pianisthd/d/l;->b:Lcom/rubycell/pianisthd/c/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/rubycell/pianisthd/d/l;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/rubycell/pianisthd/d/l;->d:Z

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/rubycell/pianisthd/d/l;->a:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/rubycell/pianisthd/d/l;->c:I

    return-void
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/rubycell/pianisthd/d/l;->f:Z

    return-void
.end method

.method public static c()Lcom/rubycell/pianisthd/c/a;
    .locals 1

    sget-object v0, Lcom/rubycell/pianisthd/d/l;->b:Lcom/rubycell/pianisthd/c/a;

    return-object v0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcom/rubycell/pianisthd/d/l;->c:I

    return v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/rubycell/pianisthd/d/l;->d:Z

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/rubycell/pianisthd/d/l;->e:Ljava/lang/String;

    return-object v0
.end method
