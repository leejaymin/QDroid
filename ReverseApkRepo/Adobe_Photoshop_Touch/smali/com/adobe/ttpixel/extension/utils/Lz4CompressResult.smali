.class public Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;
.super Ljava/lang/Object;


# instance fields
.field protected compressed:Ljava/nio/ByteBuffer;

.field protected compressedLength:I


# direct methods
.method public constructor <init>(ILjava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->compressedLength:I

    iput-object p2, p0, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->compressed:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getCompressed()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->compressed:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getCompressedLength()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;->compressedLength:I

    return v0
.end method
