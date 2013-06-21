.class public final Lb/a/a/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a;


# instance fields
.field private a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lb/a/a/c/a;-><init>([BI)V

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p2, [B

    iput-object v0, p0, Lb/a/a/c/a;->a:[B

    iget-object v0, p0, Lb/a/a/c/a;->a:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 1

    iget-object v0, p0, Lb/a/a/c/a;->a:[B

    return-object v0
.end method
