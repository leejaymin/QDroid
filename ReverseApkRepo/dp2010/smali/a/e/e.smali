.class public final La/e/e;
.super Ljava/io/PrintStream;


# static fields
.field public static a:I

.field private static b:La/e/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, La/e/e;->a:I

    return-void
.end method

.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a()La/e/e;
    .locals 2

    sget-object v0, La/e/e;->b:La/e/e;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, La/e/e;

    invoke-direct {v1, v0}, La/e/e;-><init>(Ljava/io/PrintStream;)V

    sput-object v1, La/e/e;->b:La/e/e;

    :cond_0
    sget-object v0, La/e/e;->b:La/e/e;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, La/e/e;->a:I

    return-void
.end method
