.class public final enum Lcom/rubycell/c/a/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/rubycell/c/a/e;

.field public static final enum b:Lcom/rubycell/c/a/e;

.field private static final synthetic c:[Lcom/rubycell/c/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/rubycell/c/a/e;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/rubycell/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubycell/c/a/e;->a:Lcom/rubycell/c/a/e;

    new-instance v0, Lcom/rubycell/c/a/e;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/rubycell/c/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rubycell/c/a/e;->b:Lcom/rubycell/c/a/e;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/rubycell/c/a/e;

    sget-object v1, Lcom/rubycell/c/a/e;->a:Lcom/rubycell/c/a/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/rubycell/c/a/e;->b:Lcom/rubycell/c/a/e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/rubycell/c/a/e;->c:[Lcom/rubycell/c/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/rubycell/c/a/e;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/rubycell/c/a/e;->c:[Lcom/rubycell/c/a/e;

    array-length v1, v0

    new-array v2, v1, [Lcom/rubycell/c/a/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
