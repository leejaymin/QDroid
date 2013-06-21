.class public Lcom/mxtech/nio/Charset;
.super Ljava/lang/Object;


# instance fields
.field private _nativeContext:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mxtech/nio/Charset;->native_create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mxtech/nio/Charset;->_nativeContext:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/mxtech/nio/Charset;->native_create(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mxtech/nio/Charset;->_nativeContext:I

    return-void
.end method

.method public static native autoDecode(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public static native autoDecode([BI)Ljava/lang/String;
.end method

.method private native decode(ILjava/lang/String;I)Ljava/lang/String;
.end method

.method private native decode(I[BI)Ljava/lang/String;
.end method

.method private native native_create(Ljava/lang/String;)I
.end method

.method private native native_release(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/mxtech/nio/Charset;->_nativeContext:I

    invoke-direct {p0, v0}, Lcom/mxtech/nio/Charset;->native_release(I)V

    return-void
.end method

.method public 癤욱븳援(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mxtech/nio/Charset;->_nativeContext:I

    invoke-direct {p0, v0, p1, p2}, Lcom/mxtech/nio/Charset;->decode(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public 癤욱븳援([BI)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/mxtech/nio/Charset;->_nativeContext:I

    invoke-direct {p0, v0, p1, p2}, Lcom/mxtech/nio/Charset;->decode(I[BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
