.class public final enum Lb/b/a/a/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lb/b/a/a/c;

.field public static final enum b:Lb/b/a/a/c;

.field public static final enum c:Lb/b/a/a/c;

.field private static final synthetic d:[Lb/b/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lb/b/a/a/c;

    const-string v1, "DETECTING"

    invoke-direct {v0, v1, v2}, Lb/b/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    new-instance v0, Lb/b/a/a/c;

    const-string v1, "FOUND_IT"

    invoke-direct {v0, v1, v3}, Lb/b/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    new-instance v0, Lb/b/a/a/c;

    const-string v1, "NOT_ME"

    invoke-direct {v0, v1, v4}, Lb/b/a/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lb/b/a/a/c;

    sget-object v1, Lb/b/a/a/c;->a:Lb/b/a/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lb/b/a/a/c;->b:Lb/b/a/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lb/b/a/a/c;->c:Lb/b/a/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lb/b/a/a/c;->d:[Lb/b/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/b/a/a/c;
    .locals 1

    const-class v0, Lb/b/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/b/a/a/c;

    return-object v0
.end method

.method public static values()[Lb/b/a/a/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lb/b/a/a/c;->d:[Lb/b/a/a/c;

    array-length v1, v0

    new-array v2, v1, [Lb/b/a/a/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
