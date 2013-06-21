.class public Lcom/adobe/ttpixel/extension/gl/ECGLFilter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native applyFilter(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;IZ)I
.end method

.method public static native asyncExecuteSequence(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;Lcom/adobe/ttpixel/extension/TTPixelExtensionContextGL;)I
.end method

.method public static native asyncInterrupt(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native asyncJoin(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native asyncReadPixels(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;)I
.end method

.method public static native clear(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;I)I
.end method

.method public static native clearVertexAttribData(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;I)I
.end method

.method public static native createFilter(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native destroyFilter(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native drawArrays(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IZ)I
.end method

.method public static native enableVertexAttrib(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IZ)I
.end method

.method public static native executeSequence(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;)I
.end method

.method public static native getNumVertices(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native getShaderInfoLog(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)Ljava/lang/String;
.end method

.method public static native getVertexAttribDataRangeCount(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native getVertexAttribDataRangeStart(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;)I
.end method

.method public static native readPixels(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;)I
.end method

.method public static native readPixelsRect(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/nio/ByteBuffer;IIII)I
.end method

.method public static native setDrawMode(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;I)I
.end method

.method public static native setNumVertices(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;I)I
.end method

.method public static native setParamFloat(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/lang/String;F)I
.end method

.method public static native setParamFloatMatrix(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/lang/String;[FII)I
.end method

.method public static native setParamFloatMulti(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/lang/String;[FI)I
.end method

.method public static native setParamInt(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/lang/String;I)I
.end method

.method public static native setParamIntMulti(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;Ljava/lang/String;[II)I
.end method

.method public static native setVertexAttribDataFloat(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;II[F)I
.end method

.method public static native setVertexAttribDataRange(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;II)I
.end method

.method public static native texturePrepare(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IIIIIZ)I
.end method

.method public static native textureUploadData(Lcom/adobe/ttpixel/extension/gl/ECGLFilterRef;Lcom/adobe/ttpixel/extension/gl/ECGLContextRef;IIIIIILjava/nio/ByteBuffer;IIZ)I
.end method
