.class public Lcom/mxtech/collection/SeekableMap;
.super Ljava/lang/Object;


# instance fields
.field private _nativeContext:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/mxtech/collection/SeekableMap;->native_create(II)V

    return-void
.end method

.method private native native_create(II)V
.end method

.method private native native_destroy()V
.end method


# virtual methods
.method public native begin()I
.end method

.method public native end()I
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/mxtech/collection/SeekableMap;->native_destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public native get(I)Ljava/lang/Object;
.end method

.method public native isEmpty()Z
.end method

.method public native next()I
.end method

.method public native previous()I
.end method

.method public native put(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public native seek(I)Z
.end method

.method public native size()I
.end method
