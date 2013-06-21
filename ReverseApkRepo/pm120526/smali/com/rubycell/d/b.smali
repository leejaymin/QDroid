.class public final Lcom/rubycell/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubycell/d/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/rubycell/d/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/rubycell/d/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/rubycell/d/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/rubycell/d/b;->e:Ljava/lang/String;

    iput p6, p0, Lcom/rubycell/d/b;->f:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/d/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/d/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/rubycell/d/b;->f:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/d/b;->a:Ljava/lang/String;

    return-object v0
.end method
