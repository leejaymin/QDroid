.class public Lcom/adobe/ttpixel/extension/utils/ECUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native alphaBlend(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIIZ)Z
.end method

.method public static native bitmapDataCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIIII)Z
.end method

.method public static native bitmapDataFromFileEx(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIIIII)Z
.end method

.method public static native bitmapDataResample(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIIIIII)Z
.end method

.method public static native bitmapDataToFileEx(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIIIII)Z
.end method

.method public static native bitmapFileCreateEmpty(Ljava/lang/String;III)Z
.end method

.method public static native bitmapFileCreateFromBitmapData(Ljava/lang/String;IIILjava/nio/ByteBuffer;)Z
.end method

.method public static native bitmapFileRead(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIIIII)Z
.end method

.method public static native bitmapFileResample(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIIIIIII)Z
.end method

.method public static native bitmapFileWrite(Ljava/lang/String;Ljava/nio/ByteBuffer;IIIIIII)Z
.end method

.method public static native copyBitmapData(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)Z
.end method

.method public static native getInstalledCPUCount()I
.end method

.method public static native getOnlineCPUCount()I
.end method

.method public static native getPixelsBitmapEx(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;IIIIIIIZ)Z
.end method

.method public static native getPixelsEx(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIZ)Z
.end method

.method public static native getScaledPixelsEx(Ljava/nio/ByteBuffer;IIIIIIILjava/nio/ByteBuffer;IIII)V
.end method

.method public static native isolateColor(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)I
.end method

.method public static native lz4Compress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)Lcom/adobe/ttpixel/extension/utils/Lz4CompressResult;
.end method

.method public static native lz4Free(Ljava/nio/ByteBuffer;)V
.end method

.method public static native lz4GetMaxCompressDestLength(I)I
.end method

.method public static native lz4Uncompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
.end method

.method public static native moveBitmapDataEx(Ljava/nio/ByteBuffer;IIIIIII)Z
.end method

.method public static native setPixelsEx(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIIZ)Z
.end method

.method public static native uncompressBitmapDataEx(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)Z
.end method
