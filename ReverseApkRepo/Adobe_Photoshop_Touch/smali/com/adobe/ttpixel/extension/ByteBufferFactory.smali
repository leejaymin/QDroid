.class public Lcom/adobe/ttpixel/extension/ByteBufferFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native allocateDirect(I)Ljava/nio/ByteBuffer;
.end method

.method public static native copyDirect(Ljava/nio/Buffer;Ljava/nio/Buffer;)Z
.end method

.method public static native copySwapColorChannels(Ljava/nio/Buffer;Ljava/nio/Buffer;)Z
.end method

.method public static native flipImageHor(Ljava/nio/Buffer;III)Z
.end method

.method public static native freeDirect(Ljava/nio/ByteBuffer;)V
.end method
