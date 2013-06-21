.class public abstract Lorg/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Lorg/a/a/l;

.field static final b:Lorg/a/a/l;

.field static final c:Lorg/a/a/l;

.field static final d:Lorg/a/a/l;

.field static final e:Lorg/a/a/l;

.field static final f:Lorg/a/a/l;

.field static final g:Lorg/a/a/l;

.field static final h:Lorg/a/a/l;

.field static final i:Lorg/a/a/l;

.field static final j:Lorg/a/a/l;

.field static final k:Lorg/a/a/l;

.field static final l:Lorg/a/a/l;


# instance fields
.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/a/a/m;

    const-string v1, "eras"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->a:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "centuries"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->b:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "weekyears"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->c:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "years"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->d:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "months"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->e:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "weeks"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->f:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "days"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->g:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "halfdays"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->h:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "hours"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->i:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "minutes"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->j:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "seconds"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->k:Lorg/a/a/l;

    new-instance v0, Lorg/a/a/m;

    const-string v1, "millis"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/a/a/m;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/a/a/l;->l:Lorg/a/a/l;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/l;->m:Ljava/lang/String;

    return-void
.end method

.method public static a()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->l:Lorg/a/a/l;

    return-object v0
.end method

.method public static b()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->k:Lorg/a/a/l;

    return-object v0
.end method

.method public static c()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->j:Lorg/a/a/l;

    return-object v0
.end method

.method public static d()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->i:Lorg/a/a/l;

    return-object v0
.end method

.method public static e()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->h:Lorg/a/a/l;

    return-object v0
.end method

.method public static f()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->g:Lorg/a/a/l;

    return-object v0
.end method

.method public static g()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->f:Lorg/a/a/l;

    return-object v0
.end method

.method public static h()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->c:Lorg/a/a/l;

    return-object v0
.end method

.method public static i()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->e:Lorg/a/a/l;

    return-object v0
.end method

.method public static j()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->d:Lorg/a/a/l;

    return-object v0
.end method

.method public static k()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->b:Lorg/a/a/l;

    return-object v0
.end method

.method public static l()Lorg/a/a/l;
    .locals 1

    sget-object v0, Lorg/a/a/l;->a:Lorg/a/a/l;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lorg/a/a/a;)Lorg/a/a/k;
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/l;->m:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/l;->m:Ljava/lang/String;

    return-object v0
.end method
